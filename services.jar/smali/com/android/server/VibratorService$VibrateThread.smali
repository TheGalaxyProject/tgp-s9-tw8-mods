.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mCommonUse:Z

.field private mForceStop:Z

.field private final mFrequency:I

.field private final mMagnitude:I

.field private final mUid:I

.field private final mUsageHint:I

.field private final mVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;Landroid/os/VibrationEffect$Waveform;IIII)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    iput-object p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput p5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    iput p6, p0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    iput p7, p0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get12(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delay(J)V
    .registers 12

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    :goto_c
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_14

    :goto_f
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v3, :cond_16

    :cond_13
    return-void

    :catch_14
    move-exception v2

    goto :goto_f

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    goto :goto_c
.end method

.method private delayLocked(J)J
    .registers 14

    const-wide/16 v8, 0x0

    move-wide v2, p1

    cmp-long v5, p1, v8

    if-lez v5, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v0, p1, v6

    :goto_d
    :try_start_d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_17

    :goto_10
    iget-boolean v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v5, :cond_19

    :cond_14
    sub-long v6, p1, v2

    return-wide v6

    :catch_17
    move-exception v4

    goto :goto_10

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    cmp-long v5, v2, v8

    if-lez v5, :cond_14

    goto :goto_d

    :cond_24
    return-wide v8
.end method

.method private getTotalOnDuration([J[III)J
    .registers 11

    move v0, p3

    const-wide/16 v2, 0x0

    :cond_3
    aget v4, p2, v0

    if-eqz v4, :cond_18

    add-int/lit8 v1, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    array-length v4, p1

    if-lt v1, v4, :cond_19

    if-ltz p4, :cond_17

    move v0, p4

    :goto_12
    if-ne v0, p3, :cond_3

    const-wide/16 v4, 0x3e8

    return-wide v4

    :cond_17
    move v0, v1

    :cond_18
    return-wide v2

    :cond_19
    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method public cancel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playCommonPattern()V
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get8(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v16

    move-object/from16 v0, v16

    array-length v15, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get14(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move v14, v2

    :goto_28
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v3, :cond_b2

    if-ge v14, v15, :cond_36

    add-int/lit8 v2, v14, 0x1

    aget-wide v8, v16, v14

    add-long/2addr v4, v8

    move v14, v2

    :cond_36
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_a6

    if-eqz v3, :cond_44

    move v2, v14

    :goto_42
    monitor-exit p0

    return-void

    :cond_44
    if-ge v14, v15, :cond_a9

    add-int/lit8 v2, v14, 0x1

    :try_start_48
    aget-wide v4, v16, v14

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_7c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v3

    if-nez v3, :cond_7e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->-wrap5(Lcom/android/server/VibratorService;JIIII)V

    :goto_75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v18

    sub-long/2addr v4, v12

    :cond_7c
    :goto_7c
    move v14, v2

    goto :goto_28

    :cond_7e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v10}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v11}, Lcom/android/server/VibratorService$Vibration;->-get9(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    invoke-static/range {v3 .. v11}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;JII[IIII)V
    :try_end_a5
    .catchall {:try_start_48 .. :try_end_a5} :catchall_a6

    goto :goto_75

    :catchall_a6
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_a9
    if-gez v17, :cond_ad

    move v2, v14

    goto :goto_42

    :cond_ad
    move/from16 v2, v17

    const-wide/16 v4, 0x0

    goto :goto_7c

    :cond_b2
    move v2, v14

    goto :goto_42
.end method

.method public playWaveform()V
    .registers 23

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v5}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v18

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    move/from16 v16, v13

    :goto_23
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v5, :cond_83

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_81

    aget v8, v4, v16

    add-int/lit8 v13, v16, 0x1

    aget-wide v14, v19, v16

    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_3e

    move/from16 v16, v13

    goto :goto_23

    :cond_3e
    if-eqz v8, :cond_69

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-gtz v5, :cond_76

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mMagnitude:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/VibratorService$VibrateThread;->mFrequency:I

    invoke-static/range {v5 .. v12}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;JIIIII)V

    :cond_69
    :goto_69
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v20

    if-eqz v8, :cond_73

    sub-long v6, v6, v20

    :cond_73
    :goto_73
    move/from16 v16, v13

    goto :goto_23

    :cond_76
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5, v8}, Lcom/android/server/VibratorService;->-wrap6(Lcom/android/server/VibratorService;I)V
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_7e

    goto :goto_69

    :catchall_7e
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_81
    if-gez v18, :cond_85

    :cond_83
    monitor-exit p0

    return-void

    :cond_85
    move/from16 v13, v18

    goto :goto_73
.end method

.method public run()V
    .registers 4

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_59

    :try_start_e
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mCommonUse:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playCommonPattern()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_4e

    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_59

    monitor-exit p0

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_26
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    if-ne v0, p0, :cond_34

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->-set5(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$VibrateThread;)Lcom/android/server/VibratorService$VibrateThread;

    :cond_34
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->-wrap8(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    :cond_43
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap7(Lcom/android/server/VibratorService;)V
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_5c

    :cond_48
    monitor-exit v1

    return-void

    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_15

    :catchall_4e
    move-exception v0

    :try_start_4f
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
