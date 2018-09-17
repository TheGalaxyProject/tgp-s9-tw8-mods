.class public Lcom/android/systemui/recents/misc/RecentsStatistics;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;)V
    .registers 5

    const-string/jumbo v1, "502"

    const-string/jumbo v2, "5132"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/AppListLaunchTaskInformationEvent;->recommendation:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "Frequently used apps"

    :goto_d
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string/jumbo v0, "MW apps"

    goto :goto_d
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsLong"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsEvent;)V
    .registers 3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "505"

    :goto_9
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string/jumbo v0, "500"

    goto :goto_9
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsDragging"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;)V
    .registers 6

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5112"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOBY"

    const-string/jumbo v2, "RecentsMWButton"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "FFBY"

    const-string/jumbo v2, "RecentsDragging"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;)V
    .registers 8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "503"

    :goto_d
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "5141"

    :goto_1a
    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskInformationEvent;->launchTaskIndex:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2d
    const-string/jumbo v0, "500"

    goto :goto_d

    :cond_31
    const-string/jumbo v1, "5101"

    goto :goto_1a
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->byDoubleTap:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5110"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->willExit:Z

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const-string/jumbo v0, "501"

    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "505"

    :goto_29
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_15

    :cond_2d
    const-string/jumbo v0, "500"

    goto :goto_29
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;)V
    .registers 8

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5104"

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ScreenRatioChangeInformationEvent;->enlarged:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_12
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .registers 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "503"

    :goto_d
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "5144"

    :goto_1a
    iget v2, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_21
    const-string/jumbo v0, "500"

    goto :goto_d

    :cond_25
    const-string/jumbo v1, "5105"

    goto :goto_1a
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;)V
    .registers 3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "505"

    :goto_9
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string/jumbo v0, "500"

    goto :goto_9
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;)V
    .registers 5

    iget v0, p1, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->type:I

    packed-switch v0, :pswitch_data_72

    :goto_5
    return-void

    :pswitch_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "503"

    :goto_13
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "5145"

    :goto_20
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_24
    const-string/jumbo v0, "500"

    goto :goto_13

    :cond_28
    const-string/jumbo v1, "5106"

    goto :goto_20

    :pswitch_2c
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5113"

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_38
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5107"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_42
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5108"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4c
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "503"

    :goto_59
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string/jumbo v1, "5148"

    :goto_66
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6a
    const-string/jumbo v0, "500"

    goto :goto_59

    :cond_6e
    const-string/jumbo v1, "5109"

    goto :goto_66

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2c
        :pswitch_38
        :pswitch_42
        :pswitch_4c
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->inEditMode:Z

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "503"

    :goto_11
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "5143"

    :goto_1e
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void

    :cond_2e
    const-string/jumbo v0, "500"

    goto :goto_11

    :cond_32
    const-string/jumbo v1, "5103"

    goto :goto_1e
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "500"

    :goto_7
    invoke-static {v0}, Lcom/android/systemui/util/AnalyticUtils;->sendScreenViewLog(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/SlidingViewToggleEvent;->isRecents:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "502"

    const-string/jumbo v1, "5131"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string/jumbo v0, "502"

    goto :goto_7

    :cond_1c
    const-string/jumbo v0, "500"

    const-string/jumbo v1, "5111"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;)V
    .registers 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "504"

    :goto_d
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "5149"

    :goto_1a
    iget v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;->lockedTaskCount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_21
    const-string/jumbo v0, "501"

    goto :goto_d

    :cond_25
    const-string/jumbo v1, "5121"

    goto :goto_1a
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskLockedEvent;)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "504"

    :goto_d
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo v1, "5150"

    :goto_1a
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const-string/jumbo v0, "501"

    goto :goto_d

    :cond_24
    const-string/jumbo v1, "5122"

    goto :goto_1a
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "503"

    const-string/jumbo v1, "5142"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v1, "500"

    const-string/jumbo v2, "5102"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "Swipe"

    :goto_21
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    const-string/jumbo v0, "Close button"

    goto :goto_21
.end method
