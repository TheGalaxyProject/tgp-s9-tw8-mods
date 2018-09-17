.class Lcom/android/server/audio/AudioService$SensorThread;
.super Ljava/lang/Thread;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThread"
.end annotation


# static fields
.field private static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"


# instance fields
.field private mFlatMotionSensorEnabled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorHandler:Landroid/os/Handler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mbClosed:Z

.field private mbListenerStarted:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v0, "SensorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get87(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    :cond_52
    return-void
.end method


# virtual methods
.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 9

    const/4 v6, 0x1

    iget-object v1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get35(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_3c

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get40(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z

    move-result v4

    if-nez v4, :cond_3c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_31

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    if-le v4, v6, :cond_3c

    :cond_31
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    :cond_3c
    :goto_3c
    return-void

    :pswitch_3d
    const-string/jumbo v4, "FlatMotion=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3c

    :pswitch_44
    const-string/jumbo v4, "FlatMotion=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    if-ne v4, v6, :cond_3c

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v4, v6}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-set30(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z

    goto :goto_3c

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_44
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get35(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    if-le v0, v1, :cond_29

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2b

    const-string/jumbo v0, "ProximitySensorClosed=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_35

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    const-string/jumbo v0, "ProximitySensorClosed=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbClosed:Z
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_29

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public declared-synchronized startSensor()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSensor()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SensorThread;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mFlatMotionSensorEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const-string/jumbo v0, "FlatMotion=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SensorThread;->mbListenerStarted:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
