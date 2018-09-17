.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/os/IBinder;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-void
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p0, :cond_c

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "context == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    if-nez p1, :cond_17

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intent == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {p0, p1, v1, v3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "could not bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_44
    new-instance v4, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-direct {v4, p0, v1, v3}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    return-object v4
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public getService()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-object v0
.end method
