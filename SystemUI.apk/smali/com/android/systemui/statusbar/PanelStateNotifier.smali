.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I

.field private static mPanelExpandState:Z

.field private static mState:I

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    sput v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    sput-boolean v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isKeyguardState(I)Z
    .registers 3

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isShadeLockedState(I)Z
    .registers 3

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isShadeState(I)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x0

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static notify(Landroid/content/Context;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .registers 9

    const/4 v5, 0x1

    const-string/jumbo v0, ""

    const/4 v3, 0x0

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v4, p1, :cond_a

    return-void

    :cond_a
    if-nez p2, :cond_15

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v4

    if-eqz v4, :cond_15

    return-void

    :cond_15
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne p1, v5, :cond_6e

    const-string/jumbo v0, "com.samsung.systemui.statusbar.ANIMATING"

    :goto_1c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v4

    if-nez v4, :cond_2c

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2c
    if-eq p1, v5, :cond_6d

    sget-boolean v4, Lcom/android/systemui/Rune;->NOTI_SUPPORT_PANEL_STATE_NOTIFIER_FOR_KDDI:Z

    if-eqz v4, :cond_53

    sget v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeState(I)Z

    move-result v4

    if-eqz v4, :cond_53

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_53
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v4, :cond_62

    const-string/jumbo v4, "sem_statusbar"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemStatusBarManager;

    sput-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    :cond_62
    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v4, :cond_6b

    sget-object v4, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v4, v3}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    :cond_6b
    sput-boolean v3, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    :cond_6d
    return-void

    :cond_6e
    const/4 v4, 0x2

    if-ne p1, v4, :cond_76

    const-string/jumbo v0, "com.samsung.systemui.statusbar.EXPANDED"

    const/4 v3, 0x1

    goto :goto_1c

    :cond_76
    if-nez p1, :cond_7d

    const-string/jumbo v0, "com.samsung.systemui.statusbar.COLLAPSED"

    const/4 v3, 0x0

    goto :goto_1c

    :cond_7d
    const-string/jumbo v4, "PanelStateNotifier"

    const-string/jumbo v5, "Invalid panel open state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .registers 4

    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_10

    const/4 v0, 0x2

    :goto_b
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .registers 5

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result v1

    if-eqz v1, :cond_15

    sget v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    goto :goto_15
.end method
