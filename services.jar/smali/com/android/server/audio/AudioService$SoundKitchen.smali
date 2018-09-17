.class Lcom/android/server/audio/AudioService$SoundKitchen;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mEnabled:Z

.field private mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    return-void
.end method

.method private resetByEnableDisable()V
    .registers 8

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "resetByEnableDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_52

    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get90(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_44

    :goto_1c
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v4

    const/4 v3, 0x0

    :goto_26
    array-length v5, v4

    if-ge v3, v5, :cond_70

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v5, :cond_41

    aget v5, v4, v3

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    const v5, 0x8000

    if-eq v1, v5, :cond_41

    if-eq v1, v0, :cond_41

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    aget v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->-wrap62(Lcom/android/server/audio/AudioService;I)V

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :catch_44
    move-exception v2

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -registerProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    :cond_52
    :try_start_52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v6}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get90(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/app/IProcessObserver;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_61} :catch_62

    goto :goto_1c

    :catch_62
    move-exception v2

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException -unregisterProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    :cond_70
    const/4 v3, 0x0

    :goto_71
    array-length v5, v4

    if-ge v3, v5, :cond_82

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_82
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V

    return-void
.end method

.method private setDeviceToNative(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setdevice_device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setMaxLimitedSpkVolumeToNative(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_max_limited_spk_volume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_max_limited_spk_volume_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setStateToNative()V
    .registers 5

    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1f

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audioParam;multisound_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in Thread.sleep() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private setVolumeToNative(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setvolume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setvolume_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAndRemoveItem(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_46

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v1

    if-nez v1, :cond_46

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    return-void
.end method

.method public disable()V
    .registers 3

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\nMultiSound, size:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", isEnabled:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->isEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_b9

    monitor-exit v7

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const-string/jumbo v4, ""

    :try_start_53
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v4, v6, v7
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_60} :catch_bc

    :goto_60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", volume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", maxLimitSpkVolume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    :catchall_b9
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_bc
    move-exception v0

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current Default Device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pin Device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pin App:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .registers 3

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "eanble"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->resetByEnableDisable()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->showNotification()V

    return-void
.end method

.method public getAppDevice(I)I
    .registers 10

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v2

    :cond_1e
    const v5, 0x8000

    if-ne v2, v5, :cond_24

    return v2

    :cond_24
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v5, :cond_8f

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3c

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v5, v1, 0x400e

    if-eqz v5, :cond_3d

    move v2, v1

    :cond_3c
    :goto_3c
    return v2

    :cond_3d
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v6

    monitor-enter v6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_46
    :try_start_46
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_75

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v7, -0x80000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_68

    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_68
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    iget-object v7, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_71
    .catchall {:try_start_46 .. :try_end_71} :catchall_8c

    and-int/lit16 v5, v5, 0x400e

    or-int/2addr v0, v5

    goto :goto_65

    :cond_75
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_7d

    const/16 v2, 0x4000

    :goto_7b
    monitor-exit v6

    goto :goto_3c

    :cond_7d
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_83

    const/4 v2, 0x4

    goto :goto_7b

    :cond_83
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_8a

    const/16 v2, 0x8

    goto :goto_7b

    :cond_8a
    const/4 v2, 0x2

    goto :goto_7b

    :catchall_8c
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_8f
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method public getAppDevice(IZ)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v0

    :cond_20
    :goto_20
    return v0

    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    goto :goto_20
.end method

.method public getAppVolume(I)I
    .registers 6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1f

    move-result v1

    monitor-exit v2

    return v1

    :cond_1b
    const/16 v1, 0x64

    monitor-exit v2

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .registers 11

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-nez v4, :cond_10

    const-string/jumbo v4, ""
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_70

    monitor-exit v5

    return-object v4

    :cond_10
    :try_start_10
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_70

    move-result v4

    if-ne v4, p1, :cond_1a

    :try_start_33
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get87(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v4}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get87(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v8, v4}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v4, v4, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_62} :catch_65
    .catchall {:try_start_33 .. :try_end_62} :catchall_70

    move-result-object v4

    monitor-exit v5

    return-object v4

    :catch_65
    move-exception v0

    :try_start_66
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "not found"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_70

    goto :goto_1a

    :catchall_70
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_73
    :try_start_73
    const-string/jumbo v4, ""
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    monitor-exit v5

    return-object v4
.end method

.method public getPinDevice()I
    .registers 6

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v4, v3

    if-ge v2, v4, :cond_1c

    aget v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getAppDevice(I)I

    move-result v0

    if-eqz v0, :cond_1d

    const v4, 0x8000

    if-eq v0, v4, :cond_1d

    move v1, v0

    :cond_1c
    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public getPinPackageName(I)[Ljava/lang/String;
    .registers 11

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_41

    move-result v5

    if-ne v5, p1, :cond_11

    :try_start_2a
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_36
    .catchall {:try_start_2a .. :try_end_33} :catchall_41

    move-result-object v5

    monitor-exit v6

    return-object v5

    :catch_36
    move-exception v0

    :try_start_37
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v7, "not found"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_11

    :catchall_41
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_44
    const/4 v5, 0x1

    :try_start_45
    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    aput-object v7, v5, v8
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_41

    monitor-exit v6

    return-object v5
.end method

.method public getUidList()[I
    .registers 8

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [I

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v6

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2e
    return-object v4
.end method

.method public isEnabled()Z
    .registers 3

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mEnabled:Z

    return v0
.end method

.method public removeItem(I)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    const-string/jumbo v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeItem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_49

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_47
    monitor-exit v1

    return v4

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetByAudioServerDied()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "resetByAudioServerDied"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppVolume()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getMaxLimitSpkVolume()Z

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4f

    goto :goto_1a

    :catchall_4f
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    monitor-exit v5

    return-void
.end method

.method public setAppDevice(II)V
    .registers 15

    const v3, 0x8000

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v2, "setAppDevice"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_109

    move-result v1

    if-nez v1, :cond_1c

    monitor-exit v11

    return-void

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-ne v1, p2, :cond_3c

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "same device pin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_109

    monitor-exit v11

    return-void

    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v1, v6, 0x400e

    if-eqz v1, :cond_48

    const/4 v6, 0x2

    :cond_48
    if-eqz p2, :cond_b4

    if-eq p2, v3, :cond_b4

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_56
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getAppDevice(Z)I

    move-result v1

    if-eq v1, v3, :cond_56

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v1

    if-eq p1, v1, :cond_56

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v1

    if-eqz v1, :cond_8f

    if-eq p2, v6, :cond_8f

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-wrap62(Lcom/android/server/audio/AudioService;I)V
    :try_end_8f
    .catchall {:try_start_3c .. :try_end_8f} :catchall_109

    :cond_8f
    const-wide/16 v2, 0xc8

    :try_start_91
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_ed
    .catchall {:try_start_91 .. :try_end_94} :catchall_109

    :goto_94
    const/4 v1, 0x0

    :try_start_95
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    :cond_b4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_10c

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIIZ)V

    :goto_cd
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V
    :try_end_dc
    .catchall {:try_start_95 .. :try_end_dc} :catchall_109

    monitor-exit v11

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v1

    if-eqz v1, :cond_ec

    if-ne p2, v6, :cond_ec

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService;->showHeadupNotification(I)V

    :cond_ec
    return-void

    :catch_ed
    move-exception v7

    :try_start_ee
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in Thread.sleep() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_109

    goto :goto_94

    :catchall_109
    move-exception v1

    monitor-exit v11

    throw v1

    :cond_10c
    :try_start_10c
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppDevice(I)V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_109

    goto :goto_cd
.end method

.method public setAppVolume(II)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_30

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIIZ)V

    :goto_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_34

    monitor-exit v6

    return-void

    :cond_30
    :try_start_30
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setAppVolume(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_1f

    :catchall_34
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public setMaxLimitedSpkVolume(IZ)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_31

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v3, 0x0

    const/16 v4, 0x64

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIIZ)V

    :goto_20
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->checkAndRemoveItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setMaxLimitedSpkVolumeToNative(IZ)V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_35

    monitor-exit v6

    return-void

    :cond_31
    :try_start_31
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setMaxLimitedSpkVolume(Z)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_20

    :catchall_35
    move-exception v1

    monitor-exit v6

    throw v1
.end method
