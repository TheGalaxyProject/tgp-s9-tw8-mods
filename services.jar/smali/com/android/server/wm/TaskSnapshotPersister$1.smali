.class Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get1(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get2(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_51

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v1, 0x0

    :cond_15
    :goto_15
    monitor-exit v4

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_20
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get1(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_27
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get6(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get2(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_6b

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_54

    :goto_3d
    monitor-exit v4

    goto :goto_5

    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get6(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_51

    goto :goto_15

    :catchall_51
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_54
    :try_start_54
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_56} :catch_6e
    .catchall {:try_start_54 .. :try_end_56} :catchall_6b

    :try_start_56
    invoke-static {v3, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->-set0(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_70
    .catchall {:try_start_56 .. :try_end_59} :catchall_6b

    :try_start_59
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5b} :catch_72
    .catchall {:try_start_59 .. :try_end_5b} :catchall_6b

    :try_start_5b
    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-get1(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_74
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6b

    move-result-object v3

    :try_start_5f
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_62} :catch_76
    .catchall {:try_start_5f .. :try_end_62} :catchall_6b

    :try_start_62
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_64} :catch_78
    .catchall {:try_start_62 .. :try_end_64} :catchall_6b

    const/4 v5, 0x0

    :try_start_65
    invoke-static {v3, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->-set0(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_68} :catch_69
    .catchall {:try_start_65 .. :try_end_68} :catchall_6b

    goto :goto_3d

    :catch_69
    move-exception v0

    goto :goto_3d

    :catchall_6b
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_6e
    move-exception v0

    goto :goto_3d

    :catch_70
    move-exception v0

    goto :goto_3d

    :catch_72
    move-exception v0

    goto :goto_3d

    :catch_74
    move-exception v0

    goto :goto_3d

    :catch_76
    move-exception v0

    goto :goto_3d

    :catch_78
    move-exception v0

    goto :goto_3d
.end method
