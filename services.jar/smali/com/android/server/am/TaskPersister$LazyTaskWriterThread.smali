.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_8a

    move-result v20

    monitor-exit v27

    if-eqz v20, :cond_c5

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    monitor-enter v27

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v26

    add-int/lit8 v25, v26, -0x1

    :goto_42
    if-ltz v25, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v26, v0

    if-nez v26, :cond_6c

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v26, v0

    if-eqz v26, :cond_87

    :cond_6c
    if-eqz v21, :cond_76

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_87

    :cond_76
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_140

    :cond_87
    add-int/lit8 v25, v25, -0x1

    goto :goto_42

    :catchall_8a
    move-exception v26

    monitor-exit v27

    throw v26

    :cond_8d
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    :try_end_b4
    .catchall {:try_start_8d .. :try_end_b4} :catchall_140

    monitor-exit v27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-wrap4(Lcom/android/server/am/TaskPersister;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v26, v28, v30

    if-eqz v26, :cond_fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x1f4

    add-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_146

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v26, v28, v30

    if-eqz v26, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_134
    .catchall {:try_start_d5 .. :try_end_134} :catchall_1c1

    :cond_134
    :try_start_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_134 .. :try_end_13d} :catch_13e
    .catchall {:try_start_134 .. :try_end_13d} :catchall_1c1

    goto :goto_fa

    :catch_13e
    move-exception v9

    goto :goto_fa

    :catchall_140
    move-exception v26

    monitor-exit v27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v26

    :cond_146
    :try_start_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    :goto_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_16b
    .catchall {:try_start_146 .. :try_end_16b} :catchall_1c1

    move-result-wide v28

    cmp-long v26, v18, v28

    if-gez v26, :cond_18e

    :try_start_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    sub-long v28, v28, v18

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_189
    .catch Ljava/lang/InterruptedException; {:try_start_170 .. :try_end_189} :catch_30e
    .catchall {:try_start_170 .. :try_end_189} :catchall_1c1

    :goto_189
    :try_start_189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_1c1

    move-result-wide v18

    goto :goto_162

    :cond_18e
    monitor-exit v27

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v26, v0

    if-eqz v26, :cond_210

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1c4

    const-string/jumbo v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error while creating images directory for file: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_1c1
    move-exception v26

    monitor-exit v27

    throw v26

    :cond_1c4
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    :try_start_1c7
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d5} :catch_1e5
    .catchall {:try_start_1c7 .. :try_end_1d5} :catchall_20b

    :try_start_1d5
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1e0} :catch_30a
    .catchall {:try_start_1d5 .. :try_end_1e0} :catchall_306

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_5

    :catch_1e5
    move-exception v8

    :goto_1e6
    :try_start_1e6
    const-string/jumbo v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "saveImage: unable to save "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_206
    .catchall {:try_start_1e6 .. :try_end_206} :catchall_20b

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_5

    :catchall_20b
    move-exception v26

    :goto_20c
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v26

    :cond_210
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v26, v0

    if-eqz v26, :cond_2df

    const/16 v22, 0x0

    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    monitor-enter v27

    :try_start_22d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v26, v0

    if-nez v26, :cond_240

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isCreatedForPairedRecentTask:Z

    move/from16 v26, v0
    :try_end_23e
    .catchall {:try_start_22d .. :try_end_23e} :catchall_2d9

    if-eqz v26, :cond_24e

    :cond_240
    :try_start_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_24d} :catch_300
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_240 .. :try_end_24d} :catch_303
    .catchall {:try_start_240 .. :try_end_24d} :catchall_2d9

    move-result-object v22

    :cond_24e
    :goto_24e
    monitor-exit v27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v22, :cond_5

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_256
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "_task.xml"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_28a
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_28a} :catch_2fe

    :try_start_28a
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2a5
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_2a5} :catch_2a7

    goto/16 :goto_5

    :catch_2a7
    move-exception v7

    move-object v4, v5

    :goto_2a9
    if-eqz v11, :cond_2ae

    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2ae
    const-string/jumbo v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unable to open "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " for persisting. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_2d9
    move-exception v26

    monitor-exit v27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v26

    :cond_2df
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$PairedTaskWriteQueueItem;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    check-cast v16, Lcom/android/server/am/TaskPersister$PairedTaskWriteQueueItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$PairedTaskWriteQueueItem;->mTask:Lcom/android/server/am/PairedRecentTasks;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/PairedRecentTasks;)V

    goto/16 :goto_5

    :catch_2fe
    move-exception v7

    goto :goto_2a9

    :catch_300
    move-exception v7

    goto/16 :goto_24e

    :catch_303
    move-exception v10

    goto/16 :goto_24e

    :catchall_306
    move-exception v26

    move-object v13, v14

    goto/16 :goto_20c

    :catch_30a
    move-exception v8

    move-object v13, v14

    goto/16 :goto_1e6

    :catch_30e
    move-exception v9

    goto/16 :goto_189
.end method
