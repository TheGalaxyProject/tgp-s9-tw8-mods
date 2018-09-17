.class final Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread$Slog;->-set0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "recovery"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "recovery-update"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_24
    const-string/jumbo v1, "ShutdownDelay"

    const-string/jumbo v2, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get26()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get14()Z

    move-result v2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get15()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    :try_start_41
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string/jumbo v1, "ShutdownDelay"

    const-string/jumbo v2, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V

    const-string/jumbo v1, "ShutdownDelay"

    const-string/jumbo v2, "!@delayDumpLock released"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_62} :catch_6a
    .catchall {:try_start_41 .. :try_end_62} :catchall_76

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_40

    :catch_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_76

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_40

    :catchall_76
    move-exception v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
