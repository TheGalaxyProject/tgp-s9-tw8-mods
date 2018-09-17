.class Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;
.super Landroid/os/Handler;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebindOnTimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/TransportManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_98

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_14
    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Explicit rebinding timeout passed, but already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " so not attempting to rebind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_95

    monitor-exit v4

    return-void

    :cond_43
    :try_start_43
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Explicit rebinding timeout passed, attempting rebinding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportConnection;

    if-eqz v1, :cond_8e

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v3, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unbinding the existing (broken) connection to transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_43 .. :try_end_8e} :catchall_95

    :cond_8e
    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v3, v2}, Lcom/android/server/backup/TransportManager;->-wrap1(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;)V

    :goto_94
    return-void

    :catchall_95
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_98
    const-string/jumbo v3, "BackupTransportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message sent to RebindOnTimeoutHandler, msg.what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94
.end method
