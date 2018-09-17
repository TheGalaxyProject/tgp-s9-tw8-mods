.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.super Ljava/lang/Object;
.source "DcmKeyguardLiveUXManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;
    }
.end annotation


# static fields
.field private static final DCM_MODEL:Z

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBRLauncherChange:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowingDCMLiveUX:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNPViewRoot:Landroid/widget/FrameLayout;

.field private mSavingMode:Z

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWasDCMBeforeSavingMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->handleShow(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v1, :cond_1f

    return-void

    :cond_1f
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    :goto_4d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4QqNkgOpin6JZIKBDCTF3qluGcA;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void

    :cond_62
    const/4 v1, 0x1

    goto :goto_4d
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .registers 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    return-object v0
.end method

.method private handleShow(Z)V
    .registers 6

    if-eqz p1, :cond_45

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    if-eq v1, v0, :cond_44

    const-string/jumbo v1, "DcmKeyguardLiveUXManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleShow() >> START >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->switchBottomView(Z)V

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->registerReceiver()V

    :goto_3b
    const-string/jumbo v1, "DcmKeyguardLiveUXManager"

    const-string/jumbo v2, "handleShow() << END <<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_6

    :cond_47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->unregisterReceiver()V

    goto :goto_3b
.end method

.method private registerReceiver()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2a

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "DcmKeyguardLiveUXManager"

    const-string/jumbo v2, "registerReceiver(): regist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method private switchBottomView(Z)V
    .registers 10

    const/4 v1, 0x4

    const/4 v4, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_9d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0033

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v2, 0x7f0a013d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    const v4, 0x7f0a0270

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_5e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9b

    const/4 v0, 0x0

    :goto_54
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_5e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_6c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    :cond_90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardTouchHelpers(Z)V

    return-void

    :cond_9b
    move v0, v1

    goto :goto_54

    :cond_9d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0064

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v2, 0x7f0a024f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_c1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getLockIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    :cond_e5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    goto :goto_95
.end method

.method private unregisterReceiver()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "DcmKeyguardLiveUXManager"

    const-string/jumbo v2, "NotificationPanelView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "DcmKeyguardLiveUXManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method


# virtual methods
.method public getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method public getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    return-object v0
.end method

.method public hideDCMLiveUX()V
    .registers 5

    const/16 v3, 0x16b3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "DcmKeyguardLiveUXManager"

    const-string/jumbo v1, "hideDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_DcmKeyguardLiveUXManager_4175(Landroid/net/Uri;)V
    .registers 6

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    :cond_2a
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-eq v0, v1, :cond_43

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mWasDCMBeforeSavingMode:Z

    :cond_38
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mWasDCMBeforeSavingMode:Z

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->showDCMLiveUX()V

    :cond_43
    :goto_43
    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->hideDCMLiveUX()V

    goto :goto_43
.end method

.method public setActivityStarter(Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method public setAssistManager(Lcom/android/systemui/assist/AssistManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method

.method public setKeyguardViews(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0a0383

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public showDCMLiveUX()V
    .registers 5

    const/16 v3, 0x16b3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "DcmKeyguardLiveUXManager"

    const-string/jumbo v1, "showDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLayout()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLayout()V

    :cond_9
    return-void
.end method
