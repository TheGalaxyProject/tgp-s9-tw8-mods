.class public Lcom/android/systemui/infinity/fractal/TiltDetector;
.super Ljava/lang/Object;
.source "TiltDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;
    }
.end annotation


# static fields
.field private static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b


# instance fields
.field private mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

.field private mContext:Landroid/content/Context;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mResumed:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/infinity/fractal/TiltDetector;)Lcom/android/systemui/infinity/fractal/ElementAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mResumed:Z

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/TiltDetector;->initSensor()V

    return-void
.end method

.method private initSensor()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;-><init>(Lcom/android/systemui/infinity/fractal/TiltDetector;Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mResumed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "Sensor paused."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mResumed:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public resume()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mResumed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "Sensor resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mResumed:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public setAnimator(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector;->mAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    return-void
.end method
