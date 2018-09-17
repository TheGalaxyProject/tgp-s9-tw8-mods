.class public Lcom/samsung/android/displaysolution/BigDataLoggingService;
.super Ljava/lang/Object;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BDL_ON:Ljava/lang/String; = "sys.bigdatalogging.bdlon"

.field private static final TAG:Ljava/lang/String; = "BigDataLoggingService"


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mUseBigDataLoggingServiceConfig:Z


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->DEBUG:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BigDataLoggingServiceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    const-string/jumbo v1, "sys.bigdatalogging.bdlon"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v1, :cond_7c

    const-string/jumbo v1, "sys.bigdatalogging.bdlon"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x80

    new-array v1, v12, [B

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v12, :cond_12

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    :try_start_12
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_73
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_9f

    if-eqz v7, :cond_32

    :try_start_1e
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eqz v8, :cond_2f

    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v8, -0x1

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v9, v10

    :cond_2f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_32} :catch_b4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_b7
    .catchall {:try_start_1e .. :try_end_32} :catchall_b1

    :cond_32
    if-eqz v7, :cond_37

    :try_start_34
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    :cond_37
    :goto_37
    move-object v6, v7

    :cond_38
    :goto_38
    return-object v9

    :catch_39
    move-exception v3

    const-string/jumbo v11, "BigDataLoggingService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_44
    move-exception v2

    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v11, "BigDataLoggingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_9f

    if-eqz v6, :cond_38

    :try_start_64
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_38

    :catch_68
    move-exception v3

    const-string/jumbo v11, "BigDataLoggingService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_73
    move-exception v4

    :goto_74
    :try_start_74
    const-string/jumbo v11, "BigDataLoggingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_9f

    if-eqz v6, :cond_38

    :try_start_90
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_38

    :catch_94
    move-exception v3

    const-string/jumbo v11, "BigDataLoggingService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catchall_9f
    move-exception v11

    :goto_a0
    if-eqz v6, :cond_a5

    :try_start_a2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    :cond_a5
    :goto_a5
    throw v11

    :catch_a6
    move-exception v3

    const-string/jumbo v12, "BigDataLoggingService"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :catchall_b1
    move-exception v11

    move-object v6, v7

    goto :goto_a0

    :catch_b4
    move-exception v4

    move-object v6, v7

    goto :goto_74

    :catch_b7
    move-exception v2

    move-object v6, v7

    goto :goto_45
.end method

.method private receive_boot_completed_intent()V
    .registers 1

    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 1

    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 1

    return-void
.end method

.method private receive_user_present_intent()V
    .registers 1

    return-void
.end method
