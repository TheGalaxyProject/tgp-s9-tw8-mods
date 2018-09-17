.class public Lcom/android/systemui/recents/RecentsDebugFlags;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/samsung/systemui/splugins/recents/PluginRecentsDebugFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsDebugFlags$Static;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSamsungMultiWindowEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    return v0
.end method

.method public static useCustomCurveLayout()Z
    .registers 1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public static useListLayout()Z
    .registers 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isListTypeLayout()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAppListEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isBixbyEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFastToggleRecentsEnabled()Z
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    return v2

    :cond_12
    return v2
.end method

.method public isMoreButtonEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPagingEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPairedTaskEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPrivateModeEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSamsungMultiWindowEnabledPlugin()Z
    .registers 2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v0

    return v0
.end method

.method public isScreenRatioEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTaskLockEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
