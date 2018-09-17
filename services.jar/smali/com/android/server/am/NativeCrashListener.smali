.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    if-lez p3, :cond_10

    add-int v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-gtz v0, :cond_d

    const/4 v2, -0x1

    return v2

    :cond_d
    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_10
    return v1
.end method

.method static unpackInt([BI)I
    .registers 8

    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 15

    const/16 v10, 0x1000

    const/16 v12, 0x8

    new-array v0, v10, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-wide/16 v10, 0x2710

    :try_start_d
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v9

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-eq v3, v12, :cond_32

    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    if-lez v5, :cond_115

    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_43} :catch_a5

    :try_start_43
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_a2

    :try_start_4d
    monitor-exit v11

    if-eqz v6, :cond_fa

    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v10, :cond_bb

    const/16 v10, 0x8

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v10, v11, v12

    if-nez v6, :cond_b0

    const/4 v10, -0x1

    :goto_7a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v11, v12

    const-string/jumbo v10, "Native crash"

    const/4 v12, 0x4

    aput-object v10, v11, v12

    invoke-static {v8}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x5

    aput-object v10, v11, v12

    const-string/jumbo v10, "unknown"

    const/4 v12, 0x6

    aput-object v10, v11, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x7

    aput-object v10, v11, v12

    const/16 v10, 0x7557

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :catchall_a2
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception v2

    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    return-void

    :cond_b0
    :try_start_b0
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_7a

    :cond_b5
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_b9
    if-lez v1, :cond_cf

    :cond_bb
    array-length v10, v0

    const/4 v11, 0x0

    invoke-static {p1, v0, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-lez v1, :cond_b9

    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_b5

    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_cf
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d2} :catch_a5

    :try_start_d2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_f4

    :try_start_db
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    goto :goto_af

    :catchall_f4
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_fa
    const-string/jumbo v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    :cond_115
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_11e} :catch_a5

    goto :goto_af
.end method

.method public run()V
    .registers 11

    const/4 v7, 0x1

    new-array v0, v7, [B

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/data/system/ndebugsocket"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_14
    :try_start_14
    sget v7, Landroid/system/OsConstants;->AF_UNIX:I

    sget v8, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    const-string/jumbo v7, "/data/system/ndebugsocket"

    invoke-static {v7}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    const-string/jumbo v7, "/data/system/ndebugsocket"

    const/16 v8, 0x1ff

    invoke-static {v7, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_72

    :cond_33
    :goto_33
    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_35
    invoke-static {v4, v7}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual {p0, v3}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_4d
    .catchall {:try_start_35 .. :try_end_3e} :catchall_66

    :cond_3e
    if-eqz v3, :cond_33

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_42
    invoke-static {v3, v0, v7, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_4b

    :goto_45
    :try_start_45
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_72

    goto :goto_33

    :catch_49
    move-exception v1

    goto :goto_33

    :catch_4b
    move-exception v2

    goto :goto_45

    :catch_4d
    move-exception v2

    :try_start_4e
    const-string/jumbo v7, "NativeCrashListener"

    const-string/jumbo v8, "Error handling connection"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_66

    if-eqz v3, :cond_33

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_5b
    invoke-static {v3, v0, v7, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_64

    :goto_5e
    :try_start_5e
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_61
    .catch Landroid/system/ErrnoException; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_72

    goto :goto_33

    :catch_62
    move-exception v1

    goto :goto_33

    :catch_64
    move-exception v2

    goto :goto_5e

    :catchall_66
    move-exception v7

    if-eqz v3, :cond_71

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_6b
    invoke-static {v3, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_7d

    :goto_6e
    :try_start_6e
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_71
    .catch Landroid/system/ErrnoException; {:try_start_6e .. :try_end_71} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    :cond_71
    :goto_71
    :try_start_71
    throw v7
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_72} :catch_72

    :catch_72
    move-exception v2

    const-string/jumbo v7, "NativeCrashListener"

    const-string/jumbo v8, "Unable to init native debug socket!"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_7d
    move-exception v2

    goto :goto_6e

    :catch_7f
    move-exception v1

    goto :goto_71
.end method
