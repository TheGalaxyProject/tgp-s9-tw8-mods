.class public abstract Lcom/android/server/policy/WakeGestureListener;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WakeGestureListener$1;,
        Lcom/android/server/policy/WakeGestureListener$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeGestureListener"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z

.field private final mWakeUpRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/WakeGestureListener;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/policy/WakeGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    new-instance v0, Lcom/android/server/policy/WakeGestureListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public cancelWakeUpTrigger()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "WakeGestureListener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mTriggerRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6a

    monitor-exit v1

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSupported()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract onWakeUp()V
.end method

.method public requestWakeUpTrigger()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
