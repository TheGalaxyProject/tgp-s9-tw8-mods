.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    iput-object p4, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    new-instance v0, Lcom/android/server/ServiceWatcher;

    const-string/jumbo v2, "ActivityRecognitionProxy"

    const-string/jumbo v3, "com.android.location.service.ActivityRecognitionProvider"

    move-object v1, p1

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-void
.end method

.method private bindProvider()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v6}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "Null binder found on connection."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_32

    move-result-object v2

    const-class v6, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v5

    if-nez v5, :cond_48

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "No watcher found on connection."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_32
    move-exception v4

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "Unable to get interface descriptor by unexpected exception."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_3d
    move-exception v3

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "Unable to get interface descriptor."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_48
    iget-object v6, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v6, :cond_56

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "AR HW instance not available, binding will be a no-op."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    :try_start_56
    iget-object v6, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v5, v6}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5c

    :goto_5b
    return-void

    :catch_5c
    move-exception v4

    const-string/jumbo v6, "ActivityRecognitionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onInstanceChanged Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_7e
    move-exception v3

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "Error delivering hardware interface to watcher."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :cond_89
    const-class v6, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v1

    if-nez v1, :cond_a5

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "No client found on connection."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a5
    :try_start_a5
    iget-boolean v6, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    iget-object v7, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v1, v6, v7}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_ac} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ac} :catch_b8

    goto :goto_5b

    :catch_ad
    move-exception v3

    const-string/jumbo v6, "ActivityRecognitionProxy"

    const-string/jumbo v7, "Error delivering hardware interface to client."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catch_b8
    move-exception v4

    const-string/jumbo v6, "ActivityRecognitionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAvailabilityChanged Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :cond_da
    const-string/jumbo v6, "ActivityRecognitionProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid descriptor found on connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .registers 15

    new-instance v0, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    iget-object v1, v0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "ActivityRecognitionProxy"

    const-string/jumbo v2, "ServiceWatcher could not start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1f
    return-object v0
.end method
