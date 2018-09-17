.class final Lcom/android/server/audio/RotationHelper$RotationCheckThread;
.super Ljava/lang/Thread;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotationCheckThread"
.end annotation


# instance fields
.field private final WAIT_TIMES_MS:[I

.field private final mCounterLock:Ljava/lang/Object;

.field private mWaitCounter:I


# direct methods
.method constructor <init>()V
    .registers 2

    const-string/jumbo v0, "RotationCheck"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    return-void

    nop

    :array_18
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x64
        0xc8
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method beginCheck()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    monitor-exit v1

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->start()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_e

    :goto_a
    return-void

    :catchall_b
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_e
    move-exception v0

    goto :goto_a
.end method

.method endCheck()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 6

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2a

    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    iget v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    aget v1, v2, v4

    :goto_17
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_2c

    monitor-exit v3

    if-lez v1, :cond_0

    int-to-long v2, v1

    :try_start_21
    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->sleep(J)V

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_0

    :catch_28
    move-exception v0

    goto :goto_0

    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2f
    return-void
.end method
