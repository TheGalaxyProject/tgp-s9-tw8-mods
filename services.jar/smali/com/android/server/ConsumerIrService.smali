.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private mLEDTimer:Ljava/util/Timer;

.field private mUseCount:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/ConsumerIrService;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I

    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    iget-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v1, :cond_59

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    return-void
.end method

.method private blinkLED(I)V
    .registers 6

    const-string/jumbo v0, "ConsumerIrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blinkLED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->stopBlinkLED()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/ConsumerIrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ConsumerIrService$1;-><init>(Lcom/android/server/ConsumerIrService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_36
    return-void
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halOpen()Z
.end method

.method private static native halTransmit(I[I)I
.end method

.method private stopBlinkLED()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    :cond_c
    return-void
.end method

.method private swtichLED(Z)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v5, "/sys/class/sec/led/led_b"

    invoke-direct {v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_a} :catch_7b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_4b
    .catchall {:try_start_2 .. :try_end_a} :catchall_66

    if-eqz p1, :cond_1d

    :try_start_c
    const-string/jumbo v5, "40"

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_7d
    .catchall {:try_start_c .. :try_end_15} :catchall_78

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_40

    :cond_1b
    :goto_1b
    move-object v2, v3

    :cond_1c
    :goto_1c
    return v4

    :cond_1d
    :try_start_1d
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_7d
    .catchall {:try_start_1d .. :try_end_23} :catchall_78

    goto :goto_12

    :catch_24
    move-exception v0

    move-object v2, v3

    :goto_26
    :try_start_26
    const-string/jumbo v5, "ConsumerIrService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_66

    if-eqz v2, :cond_1c

    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1c

    :catch_35
    move-exception v1

    const-string/jumbo v5, "ConsumerIrService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catch_40
    move-exception v1

    const-string/jumbo v5, "ConsumerIrService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_4b
    move-exception v1

    :goto_4c
    :try_start_4c
    const-string/jumbo v5, "ConsumerIrService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_66

    if-eqz v2, :cond_1c

    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_1c

    :catch_5b
    move-exception v1

    const-string/jumbo v5, "ConsumerIrService"

    const-string/jumbo v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catchall_66
    move-exception v5

    :goto_67
    if-eqz v2, :cond_6c

    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    :cond_6c
    :goto_6c
    throw v5

    :catch_6d
    move-exception v1

    const-string/jumbo v6, "ConsumerIrService"

    const-string/jumbo v7, "No SvcLED"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :catchall_78
    move-exception v5

    move-object v2, v3

    goto :goto_67

    :catch_7b
    move-exception v0

    goto :goto_26

    :catch_7d
    move-exception v1

    move-object v2, v3

    goto :goto_4c
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "Permission Denial: can\'t dump ConsumerIrService from without permission android.permission.DUMP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_13
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    const-string/jumbo v0, "big_data"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"IR_USAGE_COUNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput v2, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I

    :cond_4b
    return-void
.end method

.method public getCarrierFrequencies()[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasIrEmitter()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 16

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.TRANSMIT_IR"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_15

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires TRANSMIT_IR permission"

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const-wide/16 v4, 0x0

    array-length v6, p3

    :goto_18
    if-ge v3, v6, :cond_2c

    aget v2, p3, v3

    if-gtz v2, :cond_27

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Non-positive IR slice"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    int-to-long v8, v2

    add-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    const-wide/32 v6, 0x1e8480

    cmp-long v3, v4, v6

    if-lez v3, :cond_3c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "IR pattern too long"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3c
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    iget-object v6, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_42
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result v0

    if-gez v0, :cond_62

    const-string/jumbo v3, "ConsumerIrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error transmitting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    int-to-long v10, p2

    div-long/2addr v8, v10

    long-to-int v1, v8

    const/16 v3, 0xc8

    if-le v1, v3, :cond_6e

    const/16 v1, 0xc8

    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/server/ConsumerIrService;->blinkLED(I)V

    iget v3, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I

    const v7, 0x7fffffff

    if-ge v3, v7, :cond_7e

    iget v3, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ConsumerIrService;->mUseCount:I
    :try_end_7e
    .catchall {:try_start_42 .. :try_end_7e} :catchall_80

    :cond_7e
    monitor-exit v6

    return-void

    :catchall_80
    move-exception v3

    monitor-exit v6

    throw v3
.end method
