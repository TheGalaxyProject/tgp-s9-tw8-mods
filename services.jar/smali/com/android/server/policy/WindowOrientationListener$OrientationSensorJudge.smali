.class final Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrientationSensorJudge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;
    }
.end annotation


# instance fields
.field private mDesiredRotation:I

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method static synthetic -set0(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return p1
.end method

.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .registers 5

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    return-void
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .registers 8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_6

    return v4

    :cond_6
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v2, 0x1dcd6500

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    return v4

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 12

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v4, :cond_a

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v4, v5, :cond_14

    :cond_a
    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v4, :cond_22

    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v6, 0x1dcd6500

    add-long v2, v4, v6

    cmp-long v4, p1, v2

    if-ltz v4, :cond_37

    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    sub-long v4, v2, p1

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v0, v4

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->-get0(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method

.method private unscheduleRotationEvaluationLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->-get0(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .registers 6

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v2, v3, :cond_b

    return v4

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v2

    :cond_1c
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    return v4
.end method

.method public getProposedRotationLocked()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 9

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v3}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_8
    iget-object v2, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContext;->getType()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_4f

    move-result v3

    packed-switch v3, :pswitch_data_52

    :goto_11
    monitor-exit v4

    if-ltz v1, :cond_19

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_19
    return-void

    :pswitch_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    if-ltz v3, :cond_2d

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    const/4 v5, 0x3

    if-le v3, v5, :cond_30

    :cond_2d
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    :cond_30
    invoke-virtual {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    const-string/jumbo v3, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OrientationSensorJudge.onSemContextChanged, Rotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_1a .. :try_end_4e} :catchall_4f

    goto :goto_11

    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_data_52
    .packed-switch 0x6
        :pswitch_1a
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1c

    move-result v0

    monitor-exit v2

    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTouchEndLocked(J)V
    .registers 8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq v2, v3, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    :cond_12
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    return-void
.end method

.method public resetLocked(Z)V
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    return-void
.end method
