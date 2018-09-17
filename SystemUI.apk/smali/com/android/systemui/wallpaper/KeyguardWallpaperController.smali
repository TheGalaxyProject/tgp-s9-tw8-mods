.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Lcom/android/systemui/wallpaper/WallpaperViewController;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;
    }
.end annotation


# static fields
.field private static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field private mBottom:I

.field private mCurrentUserId:I

.field private mDisabled:Z

.field private mFadingAway:Z

.field private mIsEnabledDCMLauncher:Z

.field private mNaturalBarHeight:I

.field private mOccluded:Z

.field private mOldTransparentType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShowing:Z

.field private mWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_66

    :try_start_23
    const-string/jumbo v1, "KeyguardWallpaperController"

    const-string/jumbo v2, "setLockWallpaperCallback(this)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperRegisterReceiver()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    :cond_3f
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const-string/jumbo v4, "lockscreen_wallpaper_transparent"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_66} :catch_67

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v0

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .registers 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    :cond_b
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method private isEnabledDCMLauncher(Z)Z
    .registers 6

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_e

    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getDCMLauncherEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_13

    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v1

    return v1

    :catch_13
    move-exception v0

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private setWallpaperRegisterReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected apply()V
    .registers 7

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-nez v2, :cond_75

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    if-eqz v2, :cond_75

    :cond_d
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v2, v3, :cond_75

    const/4 v0, 0x0

    :goto_14
    const-string/jumbo v2, "KeyguardWallpaperController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOccluded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFadingAway="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", match_parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v4, v5, :cond_51

    const/4 v1, 0x1

    :cond_51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_65
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    if-eq v1, v0, :cond_72

    if-nez v0, :cond_77

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    :cond_72
    :goto_72
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    return-void

    :cond_75
    const/4 v0, 0x4

    goto :goto_14

    :cond_77
    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    goto :goto_72
.end method

.method public getWallpaperRootView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected handleCleanUp()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleCleanUp()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    :cond_a
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperImageChanged()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->update()V

    :cond_11
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v6, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v6

    if-eqz v6, :cond_34

    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    return-void

    :cond_34
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    if-nez v6, :cond_48

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_57

    :cond_48
    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    return-void

    :cond_57
    const-class v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v6}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v6

    if-eqz v6, :cond_74

    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    return-void

    :cond_74
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v6

    if-nez v6, :cond_90

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v6, :cond_b9

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v6

    if-eqz v6, :cond_b9

    :cond_90
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a1

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    const/4 v6, -0x2

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    :cond_a1
    invoke-virtual {p0, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    const-string/jumbo v6, "KeyguardWallpaperController"

    const-string/jumbo v7, "changed live wallpaper type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v6, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->wallpaperTypeChanged()V

    return-void

    :cond_b9
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v4

    const-string/jumbo v6, "KeyguardWallpaperController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleWallpaperTypeChanged wallpaperType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_184

    :pswitch_db
    const-string/jumbo v6, "MOTION"

    sget-object v7, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    :cond_f1
    :goto_f1
    invoke-virtual {p0, v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    return-void

    :pswitch_f5
    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    goto :goto_f1

    :pswitch_101
    sget-boolean v6, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v6, :cond_f1

    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    goto :goto_f1

    :pswitch_111
    const/4 v1, 0x0

    :try_start_112
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getAnimatedPkgName()Ljava/lang/String;
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_117} :catch_122

    move-result-object v1

    :goto_118
    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v1, v7}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    goto :goto_f1

    :catch_122
    move-exception v0

    const-string/jumbo v6, "KeyguardWallpaperController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "System dead?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    :pswitch_13e
    sget-boolean v6, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v6, :cond_f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_144
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getVideoFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getVideoPackage()Ljava/lang/String;
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_14f} :catch_15a

    move-result-object v3

    :goto_150
    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v2, v3, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    goto :goto_f1

    :catch_15a
    move-exception v0

    const-string/jumbo v6, "KeyguardWallpaperController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "System dead?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    :cond_176
    new-instance v5, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    goto/16 :goto_f1

    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_101
        :pswitch_101
        :pswitch_db
        :pswitch_111
        :pswitch_db
        :pswitch_db
        :pswitch_db
        :pswitch_13e
    .end packed-switch
.end method

.method public isEnabledDCMLauncher()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public migrateOldKeyguardWallpaper()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper_path"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3e
    return-void
.end method

.method public onUnlock()V
    .registers 3

    const-string/jumbo v0, "KeyguardWallpaperController"

    const-string/jumbo v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onUnlock()V

    :cond_12
    return-void
.end method

.method protected onUserSwitchComplete(I)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onUserSwitchComplete(I)V

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_adaptive_color"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    const/4 v0, 0x1

    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitchComplete userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " adaptive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void

    :cond_5d
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected onUserSwitching(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onUserSwitching(I)V

    const-string/jumbo v0, "KeyguardWallpaperController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitching userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 4

    const/16 v1, 0x259

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2d

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3a
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_52
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->setRootView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method protected updateIsEnabledDCMLauncher()V
    .registers 5

    :try_start_0
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V

    :goto_17
    return-void

    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_17

    :catch_22
    move-exception v0

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
