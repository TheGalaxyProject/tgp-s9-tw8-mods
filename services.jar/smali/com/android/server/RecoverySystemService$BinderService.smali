.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 9

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x1e

    if-ge v3, v6, :cond_4c

    const-string/jumbo v6, "init.svc.uncrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "init.svc.setup-bcb"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "init.svc.clear-bcb"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "running"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string/jumbo v6, "running"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string/jumbo v6, "running"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_33
    if-nez v0, :cond_39

    const/4 v6, 0x1

    return v6

    :cond_37
    const/4 v0, 0x1

    goto :goto_33

    :cond_39
    const-wide/16 v6, 0x3e8

    :try_start_3b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_41

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_41
    move-exception v2

    const-string/jumbo v6, "RecoverySystemService"

    const-string/jumbo v7, "Interrupted:"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    :cond_4c
    const/4 v6, 0x0

    return v6
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 9

    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v5, 0x1e

    if-ge v3, v5, :cond_19

    :try_start_b
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "uncrypt"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_26

    const/4 v0, 0x1

    :cond_19
    if-nez v0, :cond_3a

    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :catch_26
    move-exception v2

    const-wide/16 v6, 0x3e8

    :try_start_29
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2f

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_2f
    move-exception v1

    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Interrupted:"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_3a
    return-object v4
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v8}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "android.permission.RECOVERY"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt service is unavailable."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1e
    if-eqz p1, :cond_39

    const-string/jumbo v8, "ctl.start"

    const-string/jumbo v9, "setup-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v6

    if-nez v6, :cond_43

    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "Failed to connect to uncrypt socket"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_39
    const-string/jumbo v8, "ctl.start"

    const-string/jumbo v9, "clear-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_43
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_45
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4e} :catch_cb
    .catchall {:try_start_45 .. :try_end_4e} :catchall_df

    :try_start_4e
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_f1
    .catchall {:try_start_4e .. :try_end_57} :catchall_ea

    if-eqz p1, :cond_66

    :try_start_59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :cond_66
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v8, 0x64

    if-ne v7, v8, :cond_a7

    const-string/jumbo v9, "RecoverySystemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p1, :cond_a3

    const-string/jumbo v8, "setup"

    :goto_86
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " bcb successfully finished."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_98} :catch_f4
    .catchall {:try_start_59 .. :try_end_98} :catchall_ed

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v8, 0x1

    return v8

    :cond_a3
    :try_start_a3
    const-string/jumbo v8, "clear"

    goto :goto_86

    :cond_a7
    const-string/jumbo v8, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_c1} :catch_f4
    .catchall {:try_start_a3 .. :try_end_c1} :catchall_ed

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v11

    :catch_cb
    move-exception v5

    :goto_cc
    :try_start_cc
    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "IOException when communicating with uncrypt:"

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_df

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v11

    :catchall_df
    move-exception v8

    :goto_e0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    :catchall_ea
    move-exception v8

    move-object v1, v2

    goto :goto_e0

    :catchall_ed
    move-exception v8

    move-object v3, v4

    move-object v1, v2

    goto :goto_e0

    :catch_f1
    move-exception v5

    move-object v1, v2

    goto :goto_cc

    :catch_f4
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_cc
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v4, 0x1

    :try_start_7
    invoke-direct {p0, v4, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_81

    move-result v4

    if-nez v4, :cond_f

    monitor-exit v7

    return-void

    :cond_f
    :try_start_f
    iget-object v4, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v4}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v6, "!@[reset tracking] rebootRecoveryWithCommand write to recovery_cause"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_81

    const/4 v2, 0x0

    :try_start_28
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_30} :catch_66
    .catchall {:try_start_28 .. :try_end_30} :catchall_85

    :try_start_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RecoverySystemService rebootRecoveryWithCommand: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_47} :catch_8a
    .catchall {:try_start_30 .. :try_end_47} :catchall_87

    if-eqz v3, :cond_4c

    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_62
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4f
    .catchall {:try_start_49 .. :try_end_4c} :catchall_81

    :cond_4c
    :goto_4c
    if-eqz v5, :cond_64

    :try_start_4e
    throw v5
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_81

    :catch_4f
    move-exception v0

    move-object v2, v3

    :goto_51
    :try_start_51
    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v5, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    const-string/jumbo v4, "recovery"

    invoke-virtual {v1, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_81

    monitor-exit v7

    return-void

    :catch_62
    move-exception v5

    goto :goto_4c

    :cond_64
    move-object v2, v3

    goto :goto_5a

    :catch_66
    move-exception v4

    :goto_67
    :try_start_67
    throw v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_6c
    if-eqz v2, :cond_71

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_76
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74
    .catchall {:try_start_6e .. :try_end_71} :catchall_81

    :cond_71
    :goto_71
    if-eqz v5, :cond_84

    :try_start_73
    throw v5

    :catch_74
    move-exception v0

    goto :goto_51

    :catch_76
    move-exception v6

    if-nez v5, :cond_7b

    move-object v5, v6

    goto :goto_71

    :cond_7b
    if-eq v5, v6, :cond_71

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_80} :catch_74
    .catchall {:try_start_73 .. :try_end_80} :catchall_81

    goto :goto_71

    :catchall_81
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_84
    :try_start_84
    throw v4
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_85} :catch_74
    .catchall {:try_start_84 .. :try_end_85} :catchall_81

    :catchall_85
    move-exception v4

    goto :goto_6c

    :catchall_87
    move-exception v4

    move-object v2, v3

    goto :goto_6c

    :catch_8a
    move-exception v4

    move-object v2, v3

    goto :goto_67
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result v1

    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 21

    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v13}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "android.permission.RECOVERY"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    if-nez v1, :cond_26

    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "uncrypt service is unavailable."

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_9c

    const/4 v13, 0x0

    monitor-exit v16

    return v13

    :cond_26
    :try_start_26
    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_9c

    const/4 v14, 0x0

    const/4 v11, 0x0

    :try_start_2d
    new-instance v12, Ljava/io/FileWriter;

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_34} :catch_7f
    .catchall {:try_start_2d .. :try_end_34} :catchall_184

    :try_start_34
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4d} :catch_18b
    .catchall {:try_start_34 .. :try_end_4d} :catchall_187

    if-eqz v12, :cond_52

    :try_start_4f
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_7d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_55
    .catchall {:try_start_4f .. :try_end_52} :catchall_9c

    :cond_52
    :goto_52
    if-eqz v14, :cond_a0

    :try_start_54
    throw v14
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_9c

    :catch_55
    move-exception v6

    move-object v11, v12

    :goto_57
    :try_start_57
    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException when writing \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_57 .. :try_end_7a} :catchall_9c

    const/4 v13, 0x0

    monitor-exit v16

    return v13

    :catch_7d
    move-exception v14

    goto :goto_52

    :catch_7f
    move-exception v13

    :goto_80
    :try_start_80
    throw v13
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v14

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    :goto_87
    if-eqz v11, :cond_8c

    :try_start_89
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8c} :catch_91
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8f
    .catchall {:try_start_89 .. :try_end_8c} :catchall_9c

    :cond_8c
    :goto_8c
    if-eqz v14, :cond_9f

    :try_start_8e
    throw v14

    :catch_8f
    move-exception v6

    goto :goto_57

    :catch_91
    move-exception v15

    if-nez v14, :cond_96

    move-object v14, v15

    goto :goto_8c

    :cond_96
    if-eq v14, v15, :cond_8c

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_9b} :catch_8f
    .catchall {:try_start_8e .. :try_end_9b} :catchall_9c

    goto :goto_8c

    :catchall_9c
    move-exception v13

    monitor-exit v16

    throw v13

    :cond_9f
    :try_start_9f
    throw v13
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a0} :catch_8f
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9c

    :cond_a0
    :try_start_a0
    const-string/jumbo v13, "ctl.start"

    const-string/jumbo v14, "uncrypt"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v9

    if-nez v9, :cond_bb

    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "Failed to connect to uncrypt socket"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_9c

    const/4 v13, 0x0

    monitor-exit v16

    return v13

    :cond_bb
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_bd
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c6} :catch_17f
    .catchall {:try_start_bd .. :try_end_c6} :catchall_16d

    :try_start_c6
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cf} :catch_181
    .catchall {:try_start_c6 .. :try_end_cf} :catchall_178

    const/high16 v8, -0x80000000

    :cond_d1
    :try_start_d1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    if-ne v10, v8, :cond_db

    const/high16 v13, -0x80000000

    if-ne v8, v13, :cond_d1

    :cond_db
    move v8, v10

    if-ltz v10, :cond_143

    const/16 v13, 0x64

    if-gt v10, v13, :cond_143

    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uncrypt read status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_fc} :catch_12b
    .catchall {:try_start_d1 .. :try_end_fc} :catchall_17b

    if-eqz p2, :cond_103

    :try_start_fe
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_103} :catch_120
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_103} :catch_12b
    .catchall {:try_start_fe .. :try_end_103} :catchall_17b

    :cond_103
    :goto_103
    const/16 v13, 0x64

    if-ne v10, v13, :cond_d1

    :try_start_107
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "uncrypt successfully finished."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_114} :catch_12b
    .catchall {:try_start_107 .. :try_end_114} :catchall_17b

    :try_start_114
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_11d
    .catchall {:try_start_114 .. :try_end_11d} :catchall_9c

    const/4 v13, 0x1

    monitor-exit v16

    return v13

    :catch_120
    move-exception v7

    :try_start_121
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "RemoteException when posting progress"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12a} :catch_12b
    .catchall {:try_start_121 .. :try_end_12a} :catchall_17b

    goto :goto_103

    :catch_12b
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    :goto_12e
    :try_start_12e
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "IOException when reading status: "

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_12e .. :try_end_137} :catchall_16d

    :try_start_137
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_9c

    const/4 v13, 0x0

    monitor-exit v16

    return v13

    :cond_143
    :try_start_143
    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uncrypt failed with status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_161} :catch_12b
    .catchall {:try_start_143 .. :try_end_161} :catchall_17b

    :try_start_161
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_9c

    const/4 v13, 0x0

    monitor-exit v16

    return v13

    :catchall_16d
    move-exception v13

    :goto_16e
    :try_start_16e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v13
    :try_end_178
    .catchall {:try_start_16e .. :try_end_178} :catchall_9c

    :catchall_178
    move-exception v13

    move-object v2, v3

    goto :goto_16e

    :catchall_17b
    move-exception v13

    move-object v4, v5

    move-object v2, v3

    goto :goto_16e

    :catch_17f
    move-exception v6

    goto :goto_12e

    :catch_181
    move-exception v6

    move-object v2, v3

    goto :goto_12e

    :catchall_184
    move-exception v13

    goto/16 :goto_87

    :catchall_187
    move-exception v13

    move-object v11, v12

    goto/16 :goto_87

    :catch_18b
    move-exception v13

    move-object v11, v12

    goto/16 :goto_80
.end method
