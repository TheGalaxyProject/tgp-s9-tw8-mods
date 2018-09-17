.class public Lcom/android/systemui/qs/QSFooter;
.super Landroid/widget/FrameLayout;
.source "QSFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAlwaysShowMultiUserSwitch:Z

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDate:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field protected mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    return-object v1

    :cond_10
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v1, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_2d
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_3f
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_qs_QSFooter_14440()V
    .registers 0

    return-void
.end method

.method private startSettingsActivity()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAlarmVisibilities()V
    .registers 3

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method

.method private updateAnimator(I)V
    .registers 16

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v3, v4, v5

    mul-int v4, v1, v3

    sub-int v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    div-int v2, v4, v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    new-array v7, v12, [F

    sub-int v8, v2, v0

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string/jumbo v6, "rotation"

    new-array v7, v12, [F

    const/high16 v8, -0x3d100000    # -120.0f

    aput v8, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v4, :cond_bf

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    aput v13, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    new-array v7, v12, [F

    aput v9, v7, v10

    iget-object v8, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    aput v9, v7, v10

    aput v13, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_b9
    iget v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    return-void

    :cond_bf
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_b9
.end method

.method private updateListeners()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_32

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_32
.end method

.method private updateResources()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x7f07043d

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateSettingsAnimator()V

    return-void
.end method

.method private updateSettingsAnimator()V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_20

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_2a
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1f
.end method

.method private updateVisibilities()V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const v4, 0x7f0a053a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move v1, v2

    :goto_17
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_4f

    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_4f

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4f

    move v1, v2

    :goto_37
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    if-nez v0, :cond_48

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_49

    :cond_48
    move v2, v3

    :cond_49
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4c
    return-void

    :cond_4d
    move v1, v3

    goto :goto_17

    :cond_4f
    move v1, v3

    goto :goto_37
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_QSFooter_12474()V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateVisibilities()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setClickable(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_14857()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_13
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120ae7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_13
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_14994()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_4803(Landroid/view/View;)V
    .registers 4

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_4902(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_6508(Landroid/view/View;IIIIIIII)V
    .registers 11

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_49

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68;

    invoke-direct {v2}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_42

    const/16 v1, 0x196

    :goto_26
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_45

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const/16 v1, 0x1ea

    goto :goto_26

    :cond_45
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    goto :goto_41

    :cond_49
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    if-ne p1, v1, :cond_41

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_6f

    const/4 v2, 0x1

    :goto_5a
    const/16 v4, 0x3a2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_41

    :cond_6f
    move v2, v3

    goto :goto_5a

    :cond_71
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_41
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    const v6, 0x1020003

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_f5

    move v1, v2

    :goto_24
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_37

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    const v1, 0x7f0a0135

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const v1, 0x7f0a0132

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const v1, 0x7f0a01a8

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v4, 0x7f05001e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_f8

    :goto_5f
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    const v1, 0x7f0a04a2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const v1, 0x7f0a04a3

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a003a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0351

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v2, 0x7f0a0350

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_f5
    move v1, v3

    goto/16 :goto_24

    :cond_f8
    move v2, v3

    goto/16 :goto_5f
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 9

    const v6, 0x7f12009c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_34
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz p1, :cond_4a

    move v3, v1

    :goto_39
    if-eq v4, v3, :cond_49

    if-eqz p1, :cond_4c

    :goto_3d
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    :cond_49
    return-void

    :cond_4a
    move v3, v2

    goto :goto_39

    :cond_4c
    move v1, v2

    goto :goto_3d
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_11

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_10

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setExpansion(F)V
    .registers 4

    iput p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_22
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v0, 0x3f6e147b    # 0.93f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_35

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    return-void

    :cond_33
    move v0, p1

    goto :goto_16

    :cond_35
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public setListening(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateListeners()V

    return-void
.end method

.method public updateEverything()V
    .registers 2

    new-instance v0, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
