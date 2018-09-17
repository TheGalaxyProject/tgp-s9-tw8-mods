.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field private static final DEBUG:Z = false

.field private static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final SAVE_WAIT_TIMEOUT_MS:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingItems:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    new-instance v0, Lcom/android/server/pm/-$Lambda$hS1mIPNPrUgj3Ey9GdylMJh-bQA;

    invoke-direct {v0, p0}, Lcom/android/server/pm/-$Lambda$hS1mIPNPrUgj3Ey9GdylMJh-bQA;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutBitmapSaver_4411(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private processPendingItems()Z
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x800

    const/4 v4, 0x0

    :try_start_5
    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v6
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_35

    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_32

    move-result v5

    if-nez v5, :cond_12

    :try_start_10
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_35

    return v9

    :cond_12
    :try_start_12
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_32

    :try_start_1a
    monitor-exit v6

    iget-object v4, v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_35

    move-result v5

    if-nez v5, :cond_45

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2e

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_2e
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_31
    return v8

    :catchall_32
    move-exception v5

    :try_start_33
    monitor-exit v6

    throw v5
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v5

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_41

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_41
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_44
    throw v5

    :cond_45
    const/4 v1, 0x0

    :try_start_46
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_53} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_53} :catch_77
    .catchall {:try_start_46 .. :try_end_53} :catchall_35

    move-result-object v1

    :try_start_54
    iget-object v5, v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->write([B)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_72

    :try_start_59
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_63} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_63} :catch_77
    .catchall {:try_start_59 .. :try_end_63} :catchall_35

    if-eqz v4, :cond_71

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6e

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_6e
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_71
    return v8

    :catchall_72
    move-exception v5

    :try_start_73
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_77} :catch_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_35

    :catch_77
    move-exception v0

    :try_start_78
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "Unable to write bitmap to file"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_35

    :cond_8c
    if-eqz v4, :cond_9a

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_97

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_97
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_9a
    return v8
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending saves: Num="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Executor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    goto :goto_36

    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_52
    monitor-exit v4

    return-void
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutBitmapSaver_7645()V
    .registers 2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    const/16 v0, 0xa0c

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 19

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_28

    const-string/jumbo v10, "ShortcutService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing icon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    :try_start_28
    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2f} :catch_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_2f} :catch_66

    move-result-object v9

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_32
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/high16 v10, 0x10000

    invoke-direct {v8, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_39} :catch_73
    .catchall {:try_start_32 .. :try_end_39} :catchall_bf

    :try_start_39
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v9, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-nez v10, :cond_4c

    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v12, "Unable to compress bitmap"

    invoke-static {v10, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_56} :catch_c4
    .catchall {:try_start_39 .. :try_end_56} :catchall_c1

    if-eqz v8, :cond_5b

    :try_start_58
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_71
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5e

    :cond_5b
    :goto_5b
    if-eqz v11, :cond_8f

    :try_start_5d
    throw v11
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v10

    move-object v7, v8

    :goto_60
    if-eq v9, v6, :cond_65

    :try_start_62
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_65
    throw v10
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_66} :catch_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception v3

    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v11, "Unable to write bitmap to file"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_71
    move-exception v11

    goto :goto_5b

    :catch_73
    move-exception v10

    :goto_74
    :try_start_74
    throw v10
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v11

    move-object v13, v11

    move-object v11, v10

    move-object v10, v13

    :goto_79
    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_83
    .catchall {:try_start_7b .. :try_end_7e} :catchall_81

    :cond_7e
    :goto_7e
    if-eqz v11, :cond_8e

    :try_start_80
    throw v11

    :catchall_81
    move-exception v10

    goto :goto_60

    :catch_83
    move-exception v12

    if-nez v11, :cond_88

    move-object v11, v12

    goto :goto_7e

    :cond_88
    if-eq v11, v12, :cond_7e

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7e

    :cond_8e
    throw v10
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_81

    :cond_8f
    if-eq v9, v6, :cond_94

    :try_start_91
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_94} :catch_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_94} :catch_66

    :cond_94
    const/16 v10, 0x808

    invoke-virtual {p1, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_a5

    const/16 v10, 0x200

    invoke-virtual {p1, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_a5
    new-instance v5, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 v10, 0x0

    invoke-direct {v5, p1, v2, v10}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$PendingItem;)V

    iget-object v11, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v11

    :try_start_ae
    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v10, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_bc

    monitor-exit v11

    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_bc
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_bf
    move-exception v10

    goto :goto_79

    :catchall_c1
    move-exception v10

    move-object v7, v8

    goto :goto_79

    :catch_c4
    move-exception v10

    move-object v7, v8

    goto :goto_74
.end method

.method public waitForAllSavesLocked()Z
    .registers 8

    const/4 v6, 0x1

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/-$Lambda$hS1mIPNPrUgj3Ey9GdylMJh-bQA$1;

    invoke-direct {v3, v1}, Lcom/android/server/pm/-$Lambda$hS1mIPNPrUgj3Ey9GdylMJh-bQA$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v6

    :cond_1b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v3, "Timed out waiting on saving bitmaps."

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_23} :catch_25

    :goto_23
    const/4 v2, 0x0

    return v2

    :catch_25
    move-exception v0

    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v3, "interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
