.class Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;
.super Ljava/lang/Object;
.source "TiltDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/fractal/TiltDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/fractal/TiltDetector;


# direct methods
.method private constructor <init>(Lcom/android/systemui/infinity/fractal/TiltDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;->this$0:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/infinity/fractal/TiltDetector;Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;-><init>(Lcom/android/systemui/infinity/fractal/TiltDetector;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const v2, 0x1002b

    if-eq v1, v2, :cond_c

    return-void

    :cond_c
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;->this$0:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/TiltDetector;->-get0(Lcom/android/systemui/infinity/fractal/TiltDetector;)Lcom/android/systemui/infinity/fractal/ElementAnimator;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_36

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_36

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/TiltDetector$SensorListener;->this$0:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/TiltDetector;->-get0(Lcom/android/systemui/infinity/fractal/TiltDetector;)Lcom/android/systemui/infinity/fractal/ElementAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->onGyroDataChanged(F)V

    :goto_35
    return-void

    :cond_36
    const-string/jumbo v1, "InfinityWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error deltaY :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
