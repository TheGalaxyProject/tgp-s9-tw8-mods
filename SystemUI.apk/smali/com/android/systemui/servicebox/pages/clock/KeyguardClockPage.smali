.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "KeyguardClockPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I


# instance fields
.field private mActionDownOnClock:Z

.field private mBundleDeltaX:F

.field private mBundleDeltaY:F

.field private mBundleStartX:F

.field private mBundleStartY:F

.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

.field private mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

.field public mClockViewPattern12:Ljava/lang/String;

.field public mClockViewPattern24:Ljava/lang/String;

.field public mDateViewPattern:Ljava/lang/String;

.field private mExpandClock:Z

.field private mExternalClockType:I

.field private mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

.field private mIsFMMLock:Z

.field private mIsNationalRoamingIgnorable:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field private mLocale:Ljava/util/Locale;

.field private mLockStarExternalClockType:I

.field private mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field private mRefreshLogCounter:I

.field private mScaleMode:I

.field private mShouldShowDefaultClock:Z

.field private mShouldShowDualClock:Z

.field private mShouldShowImageClock:Z

.field private mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field protected mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->values()[Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_5c

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_5a

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_58

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_56

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_54

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_52

    :goto_44
    :try_start_44
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_50

    :goto_4d
    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-com-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues:[I

    return-object v0

    :catch_50
    move-exception v1

    goto :goto_4d

    :catch_52
    move-exception v1

    goto :goto_44

    :catch_54
    move-exception v1

    goto :goto_3b

    :catch_56
    move-exception v1

    goto :goto_32

    :catch_58
    move-exception v1

    goto :goto_29

    :catch_5a
    move-exception v1

    goto :goto_20

    :catch_5c
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    iput v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    :cond_35
    return-void
.end method

.method private changeHourFormat()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->changeHourFormat()V

    :cond_9
    return-void
.end method

.method private considerChangeClockView()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .registers 21

    const-string/jumbo v16, "KeyguardClockPage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v16, :cond_1f1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    move/from16 v16, v0

    if-eqz v16, :cond_1f1

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f4

    const/4 v2, 0x1

    :goto_49
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v7

    if-nez v2, :cond_1f7

    xor-int/lit8 v16, v5, 0x1

    if-eqz v16, :cond_1f7

    xor-int/lit8 v16, v3, 0x1

    if-eqz v16, :cond_1f7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v9

    :goto_87
    if-eqz v9, :cond_1fd

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_1fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v8

    :goto_97
    if-eqz v8, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f050034

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    :goto_aa
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->needToShowDualClock()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_208

    if-nez v5, :cond_204

    if-nez v3, :cond_204

    move/from16 v16, v2

    :goto_c4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_20c

    move v15, v8

    :goto_cf
    if-nez v2, :cond_d3

    if-nez v6, :cond_20f

    :cond_d3
    if-eqz v2, :cond_212

    xor-int/lit8 v16, v4, 0x1

    if-eqz v16, :cond_212

    xor-int/lit8 v14, v7, 0x1

    :goto_db
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v16

    if-eqz v16, :cond_21b

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_215

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    :cond_f7
    :goto_f7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_111

    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_111
    const-string/jumbo v16, " hometime:"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, " locale:"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, " hasBG?"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v16

    if-eqz v16, :cond_284

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v18, 0x7f050033

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    :goto_163
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez p1, :cond_194

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    move-object/from16 v16, v0

    if-nez v16, :cond_184

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_1e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1e7

    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_1e7

    :cond_194
    const-string/jumbo v16, "KeyguardClockPage"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "previousClockKey:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", newClockKey:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_1d6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_1d6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1e7
    const-string/jumbo v16, "KeyguardClockPage"

    const-string/jumbo v17, "considerChangeClockView() << END <<"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f1
    const/4 v6, 0x0

    goto/16 :goto_2c

    :cond_1f4
    const/4 v2, 0x0

    goto/16 :goto_49

    :cond_1f7
    const/4 v9, 0x0

    goto/16 :goto_87

    :cond_1fa
    const/4 v8, 0x1

    goto/16 :goto_97

    :cond_1fd
    const/4 v8, 0x0

    goto/16 :goto_97

    :cond_200
    const/16 v16, 0x0

    goto/16 :goto_aa

    :cond_204
    const/16 v16, 0x1

    goto/16 :goto_c4

    :cond_208
    const/16 v16, 0x0

    goto/16 :goto_c4

    :cond_20c
    const/4 v15, 0x1

    goto/16 :goto_cf

    :cond_20f
    const/4 v14, 0x1

    goto/16 :goto_db

    :cond_212
    const/4 v14, 0x0

    goto/16 :goto_db

    :cond_215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto/16 :goto_f7

    :cond_21b
    if-eqz v15, :cond_251

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_23e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_236

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    :goto_22f
    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_f7

    const/4 v12, 0x1

    goto/16 :goto_f7

    :cond_236
    if-eqz v14, :cond_23b

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_22f

    :cond_23b
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_22f

    :cond_23e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_249

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_22f

    :cond_249
    if-eqz v14, :cond_24e

    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_22f

    :cond_24e
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_22f

    :cond_251
    sget-object v13, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-boolean v16, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v16, :cond_f7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_26f

    const/4 v12, 0x7

    :goto_260
    if-nez v14, :cond_269

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_269

    const/4 v12, 0x2

    :cond_269
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    goto/16 :goto_f7

    :cond_26f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    move/from16 v16, v0

    if-eqz v16, :cond_279

    const/4 v12, 0x1

    goto :goto_260

    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v12

    goto :goto_260

    :cond_284
    const/16 v16, 0x0

    goto/16 :goto_163
.end method

.method private findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    return-object v5

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object p1

    :cond_1b
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3a

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_3a

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_37

    return-object v3

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3a
    return-object v5
.end method

.method private generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 6

    const/4 v4, 0x0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_22

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    return-object v1

    :array_22
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isDateEmbeddedClockType()Z
    .registers 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1b

    :cond_25
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isHorizontalClockType()Z
    .registers 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_12

    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isInClockArea(Landroid/view/MotionEvent;)Z
    .registers 6

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v3, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    :goto_a
    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3f

    const/4 v3, 0x1

    return v3

    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    goto :goto_a

    :cond_3f
    const/4 v3, 0x0

    return v3
.end method

.method private isNetworkRoamingState()Z
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_35

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sget-boolean v4, Lcom/android/systemui/Rune;->COMMON_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v4, :cond_30

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_35

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    return v4

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    return v4

    :cond_35
    return v6
.end method

.method private isVerticalClockType()Z
    .registers 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    if-ne v1, v0, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandImageSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v1, v2, :cond_11

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private needToShowDualClock()Z
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isDualClock()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowRoamingClockOnKeyguard()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    if-eqz v1, :cond_2c

    xor-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2c

    if-nez v0, :cond_2c

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6a

    :cond_2c
    const-string/jumbo v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needToShowDualClock() isRoamingClockEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isWhereToShowOptionEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isEasyModeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsNetworkRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6a
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() homecity_timezone is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_82
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_94

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() canIgnoreNationalRoamingToShowSingleClock() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_94
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "needToShowDualClock() isWiFiOnlyDevice() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a6
    const/4 v3, 0x1

    return v3
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string/jumbo v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    return-void

    :cond_1c
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-nez v5, :cond_30

    const-string/jumbo v5, "KeyguardClockPage"

    const-string/jumbo v6, "setAutoHomecityTimezone(): isDeviceProvisioned=false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneDeviceProvisioned"

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneDeviceProvisioned"

    invoke-static {v5, v6, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_74

    const-string/jumbo v5, "KeyguardClockPage"

    const-string/jumbo v6, "setAutoHomecityTimezone(): TelephonyManager=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_74
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone(): simState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_96

    return-void

    :cond_96
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

    if-eqz v5, :cond_1a0

    const-string/jumbo v1, "Asia/Seoul"

    :goto_9d
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone(): homecity_timezone set by SystemUI >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", homecity_timezone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", persist.sys.timezone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.timezone"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isNetworkRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isNationalRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->isNationalRoaming(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/android/systemui/Rune;->COMMON_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v5, :cond_1ae

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v8, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v9, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v9, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_197
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "HomecityTimezoneSet"

    invoke-static {v5, v6, v2}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9d

    :cond_1ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.sim.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_197
.end method

.method private updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_f
    return-void
.end method

.method private updateClockStates()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    return-void

    :cond_11
    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setScalableClockShowing(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-nez v2, :cond_41

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDefaultClock:Z

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v2

    if-ne v2, v0, :cond_41

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    :goto_39
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setClockScaleMode(I)V

    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    goto :goto_39

    :cond_4f
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setScalableClockShowing(Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v3, v4, :cond_62

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ImageDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-ne v3, v4, :cond_66

    :cond_62
    :goto_62
    invoke-interface {v2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setFixedClockShowing(Z)V

    goto :goto_39

    :cond_66
    move v0, v1

    goto :goto_62
.end method

.method private updateScaleMode(Z)V
    .registers 12

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-nez v6, :cond_6

    return-void

    :cond_6
    const/4 v4, -0x1

    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v6, v9, :cond_11

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sget-object v7, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    if-eq v6, v7, :cond_ca

    :cond_11
    const/4 v4, 0x0

    :cond_12
    :goto_12
    const/4 v6, -0x1

    if-ne v4, v6, :cond_7d

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getOwnerInfo()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    if-eqz v3, :cond_111

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->hasSpace()Z

    move-result v2

    :goto_23
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v6

    if-nez v6, :cond_114

    :cond_39
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v6

    if-nez v6, :cond_114

    :cond_4f
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_117

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v1

    :goto_63
    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v6

    if-nez v6, :cond_11a

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v9, :cond_11d

    const/4 v0, 0x1

    :goto_76
    if-nez v1, :cond_7a

    if-eqz v0, :cond_120

    :cond_7a
    if-eqz v2, :cond_120

    const/4 v4, 0x4

    :cond_7d
    :goto_7d
    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eq v6, v4, :cond_c9

    const-string/jumbo v6, "KeyguardClockPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateScaleMode() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " >> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    if-eqz p1, :cond_c9

    iget v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-nez v6, :cond_c9

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c9

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v6, :cond_c6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c9

    :cond_c6
    invoke-direct {p0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_c9
    return-void

    :cond_ca
    if-eqz p1, :cond_dd

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_dd
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v6, :cond_f6

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    if-ne v6, v7, :cond_f6

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v6}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_f6
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_12

    check-cast v5, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_111
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_114
    const/4 v1, 0x1

    goto/16 :goto_63

    :cond_117
    const/4 v1, 0x0

    goto/16 :goto_63

    :cond_11a
    const/4 v0, 0x1

    goto/16 :goto_76

    :cond_11d
    const/4 v0, 0x0

    goto/16 :goto_76

    :cond_120
    if-nez v1, :cond_124

    if-eqz v0, :cond_127

    :cond_124
    const/4 v4, 0x3

    goto/16 :goto_7d

    :cond_127
    if-eqz v2, :cond_12c

    const/4 v4, 0x2

    goto/16 :goto_7d

    :cond_12c
    const/4 v4, 0x1

    goto/16 :goto_7d
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .registers 4

    const/4 v1, 0x4

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockVisibility(I)V

    :cond_1b
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setTimeVisibility(I)V

    :cond_28
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setDateVisibility(I)V

    :cond_3f
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setDateVisibility(I)V

    :cond_4c
    return-void
.end method

.method protected getContentsView(I)Landroid/view/View;
    .registers 12

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getContentsView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d008e

    packed-switch p1, :pswitch_data_ec

    :cond_23
    invoke-static {}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-getcom-android-systemui-servicebox-pages-clock-KeyguardClockPage$InternalClockTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_f2

    :cond_32
    const-string/jumbo v4, "KeyguardClockPage"

    const-string/jumbo v5, "Lockscreen doesn\'t need to show clock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    return-object v4

    :pswitch_48
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v4, :cond_23

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_72

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_72

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_72
    return-object v3

    :cond_73
    const v1, 0x7f0d0072

    goto :goto_3b

    :pswitch_77
    if-ne p1, v7, :cond_7d

    const v1, 0x7f0d0090

    goto :goto_3b

    :cond_7d
    const v1, 0x7f0d008e

    goto :goto_3b

    :pswitch_81
    if-ne p1, v7, :cond_87

    const v1, 0x7f0d0091

    goto :goto_3b

    :cond_87
    const v1, 0x7f0d008f

    goto :goto_3b

    :pswitch_8b
    const v1, 0x7f0d006e

    goto :goto_3b

    :pswitch_8f
    const v1, 0x7f0d006d

    goto :goto_3b

    :pswitch_93
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockType:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_ca

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v4, :cond_e2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    if-eqz v4, :cond_cb

    :cond_b5
    :goto_b5
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExpandClock:Z

    if-nez v4, :cond_ca

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v4

    if-eqz v4, :cond_ca

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mScaleMode:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setScaleMode(I)V

    :cond_ca
    return-object v3

    :cond_cb
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_b5

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b5

    :cond_e2
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b5

    nop

    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_48
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_77
        :pswitch_81
        :pswitch_77
        :pswitch_8b
        :pswitch_81
        :pswitch_93
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLockStarClockType()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "servicebox_clock"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 5

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v1, :cond_2d

    if-eqz p1, :cond_2d

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :goto_1d
    return-object v0

    :cond_1e
    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_1d

    :cond_2d
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_1d
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initViews() mClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mExternalClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eq v0, p1, :cond_54

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    :cond_49
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_54
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eq v0, p1, :cond_75

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_75

    :cond_6c
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_75
    instance-of v0, p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_93

    check-cast p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    :cond_86
    :goto_86
    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockStates()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void

    :cond_93
    instance-of v0, p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_86

    check-cast p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    goto :goto_86

    :cond_9e
    check-cast p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    goto :goto_86
.end method

.method public isSwitchAnimationPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->isPlaying()Z

    move-result v0

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    :goto_32
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_37
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void

    :cond_4c
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public onClockColorChanged()V
    .registers 3

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "onClockColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateClockColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public onClockPackageChanged()V
    .registers 1

    return-void
.end method

.method public onClockStyleChanged()V
    .registers 1

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a0257

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setClickable(Z)V

    :cond_2e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLockModeChanged()V
    .registers 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_8
    return-void
.end method

.method public onOpenThemeChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOwnerInfoSpaceChanged(Z)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_8
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 8

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v4, "KeyguardClockPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eq v4, v2, :cond_39

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    const/4 v0, 0x1

    :cond_39
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    if-eq v4, v1, :cond_40

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    const/4 v0, 0x1

    :cond_40
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    :cond_5e
    if-eqz v0, :cond_63

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_63
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_21
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->changeHourFormat()V

    goto :goto_24

    :cond_34
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_4a
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_24

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    goto :goto_24
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    if-nez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isInClockArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    if-eqz v0, :cond_32

    return v3

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_32

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isInClockArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    :cond_30
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mActionDownOnClock:Z

    :cond_32
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_37
    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->showServiceBox()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->playSoundEffect(I)V

    return v3
.end method

.method public onUpdateLockscreenHiddenItems()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .registers 16

    const/16 v9, 0x10

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v5, :cond_2a9

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v5

    if-eqz v5, :cond_2a9

    iget v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-ne v5, v13, :cond_1f5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isHorizontalClockType()Z

    move-result v5

    if-eqz v5, :cond_42

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :goto_2e
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v5, :cond_e9

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v5, :cond_e9

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const-string/jumbo v6, "common_clock_transition_bundle"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    :goto_3f
    if-nez v2, :cond_f6

    return-void

    :cond_42
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isVerticalClockType()Z

    move-result v5

    if-eqz v5, :cond_67

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto :goto_2e

    :cond_67
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isDateEmbeddedClockType()Z

    move-result v5

    if-eqz v5, :cond_b5

    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date_shamsi"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_2e

    :cond_b5
    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_sec_colon"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_second"

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->generateBigPageInDelayOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_2e

    :cond_e9
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    check-cast v5, Landroid/view/View;

    const-string/jumbo v6, "common_clock_transition_bundle"

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->findViewByTransitionName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_3f

    :cond_f6
    new-array v3, v13, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_16a

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v11

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aget v6, v3, v10

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    :cond_16a
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v8, v9

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_1de

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v8, v9

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_2c0

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_2c8

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_1de
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0, v12}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :goto_1f4
    return-void

    :cond_1f5
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    const/16 v6, 0x14d

    invoke-virtual {v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v4

    const-string/jumbo v5, "common_clock_transition_hour"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_colon"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_minute"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v5, "common_clock_transition_date_shamsi"

    invoke-virtual {p1, v5, v4}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaY:F

    add-float/2addr v8, v9

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartY:F

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v5

    if-eqz v5, :cond_291

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->X:Landroid/util/Property;

    new-array v7, v13, [F

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    iget v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleDeltaX:F

    add-float/2addr v8, v9

    aput v8, v7, v11

    iget v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mBundleStartX:F

    aput v8, v7, v10

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_2d0

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v10, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v13, [F

    fill-array-data v7, :array_2d8

    invoke-static {v12, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_291
    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v12, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_1f4

    :cond_2a9
    const-string/jumbo v5, "common_clock_transition_bundle"

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setPivot(II)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    goto/16 :goto_1f4

    nop

    :array_2c0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2c8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2d0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2d8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public refreshTime()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_40

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    :cond_40
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->-wrap0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    if-nez v0, :cond_69

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    :cond_68
    return-void

    :cond_69
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern12:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockViewPattern24:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mDateViewPattern:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_68

    goto :goto_51
.end method

.method public refreshViews(I)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mExternalClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->refresh()V

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    goto :goto_b
.end method

.method public setCoverState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;->setCoverState(Z)V

    :cond_9
    return-void
.end method

.method public setLockStarClockType(I)V
    .registers 5

    if-gtz p1, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KeyguardClockPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid clock type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_42

    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarExternalClockType:I

    :goto_3d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void

    :cond_42
    sparse-switch p1, :sswitch_data_54

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->ExpandSingle:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_3d

    :sswitch_4a
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultDual2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_3d

    :sswitch_4f
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->DefaultSingle2016:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mLockStarInternalClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    goto :goto_3d

    :sswitch_data_54
    .sparse-switch
        0x2 -> :sswitch_4f
        0x7 -> :sswitch_4a
    .end sparse-switch
.end method

.method public setLockStarClockType(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    :cond_11
    return-void

    :cond_12
    const-string/jumbo v0, "clock"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->setLockStarClockType(I)V

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->updateScaleMode(Z)V

    :cond_8
    return-void
.end method

.method public setPageType(IZ)V
    .registers 5

    const/4 v1, 0x2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, v1, :cond_b

    if-ne p1, v1, :cond_f

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    :cond_25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    goto :goto_e
.end method
