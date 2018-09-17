.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final KT_TWOPHONE_SETTINGS_INTENT:Landroid/content/Intent;

.field private final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.kt.menu.action.KT_TWOPHONE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->KT_TWOPHONE_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailView;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :goto_e
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView;->refreshAdapter()V

    return-object v0

    :cond_12
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    goto :goto_e
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x7d

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->KT_TWOPHONE_SETTINGS_INTENT:Landroid/content/Intent;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    goto :goto_6
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v1, 0x7f120907

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .registers 2

    return p1
.end method
