.class Lcom/android/server/backup/TransportManager$TransportConnection;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportConnection"
.end annotation


# instance fields
.field private mBinder:Lcom/android/internal/backup/IBackupTransport;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/backup/SelectBackupTransportCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportComponent:Landroid/content/ComponentName;

.field private mTransportName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/TransportManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/backup/TransportManager$TransportConnection;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager$TransportConnection;->getBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/TransportManager$TransportConnection;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager$TransportConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/TransportManager$TransportConnection;Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager$TransportConnection;->addListener(Landroid/app/backup/SelectBackupTransportCallback;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/TransportManager$TransportConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager$TransportConnection;->bindIfUnbound()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/TransportManager$TransportConnection;-><init>(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method private addListener(Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v0}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_18

    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_10

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bindIfUnbound()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v0}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    if-nez v0, :cond_32

    const-string/jumbo v0, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rebinding to transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-static {v0, v2, p0}, Lcom/android/server/backup/TransportManager;->-wrap0(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)Z
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit v1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getBinder()Lcom/android/internal/backup/IBackupTransport;
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v0}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v0}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRebindTimeout()J
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v1}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1d

    const-wide/32 v2, 0x493e0

    :goto_1a
    return-wide v2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_15

    :cond_1d
    const-wide/16 v2, 0x7530

    goto :goto_1a
.end method

.method private scheduleRebindTimeout(Landroid/content/ComponentName;)V
    .registers 9

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager$TransportConnection;->getRebindTimeout()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v4}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v4}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v4}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v4, "BackupTransportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheduled explicit rebinding for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/16 v7, 0xb22

    invoke-static {v7, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_80

    :try_start_25
    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get3(Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/TransportManager$TransportBoundListener;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5, v7}, Lcom/android/server/backup/TransportManager$TransportBoundListener;->onTransportBound(Lcom/android/internal/backup/IBackupTransport;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_f4
    .catchall {:try_start_25 .. :try_end_38} :catchall_1b7

    move-result v4

    :try_start_39
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_94

    const-string/jumbo v5, "BackupTransportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bound to transport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_39 .. :try_end_7f} :catchall_80

    goto :goto_6e

    :catchall_80
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_83
    :try_start_83
    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_8d
    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_92
    .catchall {:try_start_83 .. :try_end_92} :catchall_80

    :goto_92
    monitor-exit v6

    return-void

    :cond_94
    :try_start_94
    const-string/jumbo v5, "BackupTransportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bound to transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " but it is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/16 v7, 0xb22

    invoke-static {v7, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/app/backup/SelectBackupTransportCallback;->onFailure(I)V
    :try_end_f3
    .catchall {:try_start_94 .. :try_end_f3} :catchall_80

    goto :goto_e3

    :catch_f4
    move-exception v1

    const/4 v4, 0x0

    :try_start_f6
    const-string/jumbo v5, "BackupTransportManager"

    const-string/jumbo v7, "Couldn\'t get transport name."

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f6 .. :try_end_ff} :catchall_1b7

    :try_start_ff
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_157

    const-string/jumbo v5, "BackupTransportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bound to transport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_134
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_134

    :cond_146
    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_150
    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_92

    :cond_157
    const-string/jumbo v5, "BackupTransportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bound to transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " but it is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/16 v7, 0xb22

    invoke-static {v7, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v5}, Lcom/android/server/backup/TransportManager;->-get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    iget-object v5, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_150

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/app/backup/SelectBackupTransportCallback;->onFailure(I)V

    goto :goto_1a6

    :catchall_1b7
    move-exception v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_20f

    const-string/jumbo v7, "BackupTransportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bound to transport: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v7}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_1ed

    :cond_1ff
    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v7}, Lcom/android/server/backup/TransportManager;->-get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_209
    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    throw v5

    :cond_20f
    const-string/jumbo v7, "BackupTransportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bound to transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but it is invalid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/16 v8, 0xb22

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v7}, Lcom/android/server/backup/TransportManager;->-get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v7}, Lcom/android/server/backup/TransportManager;->-get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    iget-object v7, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_209

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/SelectBackupTransportCallback;

    const/4 v7, -0x2

    invoke-virtual {v2, v7}, Landroid/app/backup/SelectBackupTransportCallback;->onFailure(I)V
    :try_end_26e
    .catchall {:try_start_ff .. :try_end_26e} :catchall_80

    goto :goto_25e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v1}, Lcom/android/server/backup/TransportManager;->-get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mBinder:Lcom/android/internal/backup/IBackupTransport;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->this$0:Lcom/android/server/backup/TransportManager;

    invoke-static {v1}, Lcom/android/server/backup/TransportManager;->-get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/backup/TransportManager$TransportConnection;->mTransportName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_4a

    monitor-exit v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0xb22

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo v1, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnected from transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager$TransportConnection;->scheduleRebindTimeout(Landroid/content/ComponentName;)V

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1
.end method
