.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# static fields
.field public static final AWAKE_INTERVAL_DEFAULT_MS_DEFAULT:I


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private mBouncerContainer:Landroid/widget/FrameLayout;

.field private mBouncerLp:Landroid/view/WindowManager$LayoutParams;

.field private mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

.field private final mHandler:Landroid/os/Handler;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScreenBrightnessDoze:F

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBarView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/systemui/Rune;->getDefaultDisplayTimeout()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->AWAKE_INTERVAL_DEFAULT_MS_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "intelligent_sleep_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "sem_perfomance_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_19
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_19

    :cond_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_19
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringBlurEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyQSColoringBlurEffect()V

    :cond_40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyCoverFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_56
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    if-eq v1, v2, :cond_67

    :try_start_5c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_74

    :goto_63
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    :cond_67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_7f

    :cond_73
    :goto_73
    return-void

    :catch_74
    move-exception v0

    const-string/jumbo v1, "StatusBarWindowManager"

    const-string/jumbo v2, "Failed to call setHasTopUi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :cond_7f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_73

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBouncer(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    goto :goto_73
.end method

.method private applyBouncer(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 10

    const/4 v7, -0x1

    const v6, -0x20001

    const v5, 0x3e19999a    # 0.15f

    const/4 v4, 0x0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-nez v2, :cond_a1

    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_45
    :goto_45
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_CUSTOM_BGCOLOR:Z

    if-eqz v2, :cond_60

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060051

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_5e
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->navigationBarIconColor:I

    :cond_60
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_a0

    const-string/jumbo v2, "StatusBar-Window"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bouncer LP changed!!! = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a0
    return-void

    :cond_a1
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    if-nez v2, :cond_10

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-nez v2, :cond_10

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_e2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v4, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v4, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-nez v2, :cond_45

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_45

    :cond_115
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_e2

    :cond_11f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x7f060052

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto/16 :goto_5e
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_a
.end method

.method private applyCoverFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_10
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_25

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_25

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-eq v1, v0, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 7

    const v4, -0x20001

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v1, :cond_55

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    :goto_9
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_1d

    :cond_15
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    if-eqz v1, :cond_57

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v1, :cond_a7

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_54
    return-void

    :cond_55
    const/4 v0, 0x0

    goto :goto_9

    :cond_57
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2c

    :cond_7d
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_85

    if-eqz v0, :cond_97

    :cond_85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2c

    :cond_97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2c

    :cond_a7
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_ba
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v3, -0x10000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_54
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_c
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 6

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    const/4 v0, 0x1

    :cond_f
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_15
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_15

    :cond_27
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1f
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceUserActivity:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_25
    return-void

    :cond_26
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_25
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 6

    const v3, -0x100001

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_f
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_8b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    if-nez v0, :cond_41

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_41
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    :goto_53
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    :cond_89
    const/4 v0, 0x1

    goto :goto_53

    :cond_8b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_7f
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_c
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 8

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x1770

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :goto_18
    return-void

    :cond_19
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_18

    :cond_35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_18
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .registers 3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    if-nez v0, :cond_19

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    if-nez v0, :cond_19

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-nez v0, :cond_19

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18

    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .registers 9

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void
.end method

.method public addBouncer(Landroid/widget/FrameLayout;)V
    .registers 8

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_7a

    const/16 v3, 0x7d9

    :goto_10
    const/4 v1, -0x1

    const/4 v2, 0x0

    const v4, -0x7ffffeb8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "Bouncer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-wide v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void

    :cond_7a
    const/16 v3, 0x7de

    goto :goto_10

    :cond_7d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_62
.end method

.method public applyQSColoringBlurEffect()V
    .registers 3

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringBlurEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_34

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    if-eqz v0, :cond_55

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBlurAmount()F

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_54
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "StatusBarWindowManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getUserActivityTimeout()J
    .registers 9

    const-wide/16 v6, 0x1388

    const-wide/16 v4, 0xbb8

    sget v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->AWAKE_INTERVAL_DEFAULT_MS_DEFAULT:I

    int-to-long v0, v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isSmartStayEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_15
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_HIGH_PERFORMANCE_MODE:Z

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isNormalInHighPerformanceMode()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_27
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_36

    sget v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->AWAKE_INTERVAL_DEFAULT_MS_DEFAULT:I

    int-to-long v0, v2

    :cond_36
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_44
    :goto_44
    const-string/jumbo v2, "StatusBarWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserActivityTimeout()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_5f
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mPowerManager:Landroid/os/PowerManager;

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mPowerManager:Landroid/os/PowerManager;

    :cond_7a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_44
.end method

.method public isShowingWallpaper()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRemoteInputActive(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public removeBouncer()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_c
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerContainer:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLp:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setBackdropShowing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setBarHeight(I)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setCoverState(ZZI)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->viewCoverShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->coverAppShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    if-nez p3, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isFlipCover:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setDozing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public setStatusBarState(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    return-void
.end method

.method public updateUserActivityTimeout(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-wide v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    if-nez p1, :cond_19

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    :cond_1e
    return-void
.end method

.method public userActivityTimeoutChanged(Z)V
    .registers 7

    const/4 v1, 0x0

    const/16 v4, 0x65

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1f
    move v0, v1

    goto :goto_17
.end method

.method public wallpaperTypeChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void
.end method
