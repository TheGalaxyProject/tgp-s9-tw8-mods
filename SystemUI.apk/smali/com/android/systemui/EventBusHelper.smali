.class public Lcom/android/systemui/EventBusHelper;
.super Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;
.source "EventBusHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;-><init>()V

    return-void
.end method

.method public static initialize()Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;
    .registers 1

    new-instance v0, Lcom/android/systemui/EventBusHelper;

    invoke-direct {v0}, Lcom/android/systemui/EventBusHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/EventBusHelper;->sPluginEventBusHelper:Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;

    sget-object v0, Lcom/android/systemui/EventBusHelper;->sPluginEventBusHelper:Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;

    return-object v0
.end method

.method private sendEvent(ZLcom/android/systemui/recents/events/EventBus$Event;)V
    .registers 4

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_9
.end method


# virtual methods
.method public sendFocusNextTaskViewEvent(ZI)V
    .registers 4

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v0, p2}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/EventBusHelper;->sendEvent(ZLcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendFocusPreviousTaskViewEvent(Z)V
    .registers 3

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/EventBusHelper;->sendEvent(ZLcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendLaunchTaskEvent(ZLcom/samsung/systemui/splugins/recents/views/PluginTaskView;Lcom/samsung/systemui/splugins/recents/model/PluginTask;Landroid/graphics/Rect;IZ)V
    .registers 13

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    move-object v2, p3

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/EventBusHelper;->sendEvent(ZLcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendRecentsViewModeChangedEvent(ZZZ)V
    .registers 5

    new-instance v0, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;

    invoke-direct {v0, p2, p3}, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;-><init>(ZZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/EventBusHelper;->sendEvent(ZLcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
