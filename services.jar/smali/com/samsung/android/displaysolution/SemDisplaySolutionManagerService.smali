.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManagerService"


# instance fields
.field private final COLOR_BLIND_OFF:Ljava/lang/String;

.field private final COLOR_BLIND_ON:Ljava/lang/String;

.field private final DEBUG:Z

.field private final HDR_EFFECT_OFF:Ljava/lang/String;

.field private final HDR_EFFECT_ON_1:Ljava/lang/String;

.field private final HDR_EFFECT_ON_2:Ljava/lang/String;

.field private IRC_MODE_NODE:Ljava/lang/String;

.field private final LDU_OFF:Ljava/lang/String;

.field private final LDU_ON_1:Ljava/lang/String;

.field private final LDU_ON_2:Ljava/lang/String;

.field private final LDU_ON_3:Ljava/lang/String;

.field private final LDU_ON_4:Ljava/lang/String;

.field private final LDU_ON_5:Ljava/lang/String;

.field private final REAL_HDR_OFF:Ljava/lang/String;

.field private final REAL_HDR_ON:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field private bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field private mAdaptiveScreenModeEnabled:Z

.field private mAlphaBlendingValue:F

.field private mAutoBrightnessMode:Z

.field private mAutoBrightnessModeEnabled:Z

.field private mBlueLightFilterModeEnabled:Z

.field private mBrightnessArray:[F

.field private mBrightnessStringArray:[Ljava/lang/String;

.field private mCalculatedAlphaBlendingValue:F

.field private mColorBlind:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightnessValue:F

.field private mEmergencyModeEnabled:Z

.field private mHDREffect:Z

.field private mHighBrightnessModeEnabled:Z

.field private mHighDynamicRangeEnabled:Z

.field private mLDU:Z

.field private final mLock:Ljava/lang/Object;

.field private mMSCSEnable:Z

.field private mName:Ljava/lang/String;

.field private final mNumberDisplaySolutionBrightnessFactor:I

.field private final mNumberDisplaySolutionScaleFactor:I

.field private mPlatformBrightnessValue:F

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingModeEnabled:Z

.field private mRealHDR:Z

.field private final mSCafeVersion:Ljava/lang/String;

.field private mScaleFactor:F

.field private mScaleFactorStringArray:[Ljava/lang/String;

.field private mScaleFactorValueArray:[F

.field private final mScreenBrightnessExtendedMaximumConfig:I

.field private mSettingValue:Ljava/lang/String;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

.field private mTempAB:D

.field private mTitle:Ljava/lang/String;

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseBigDataLoggingServiceConfig:Z

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field private settingsValueEM:F

.field private settingsValuePSM:F

.field private settingsValueString:Ljava/lang/String;

.field private settingsValueStringArray:[Ljava/lang/String;

.field private settingsValueUPSM:F

.field private temp_COLOR_BLIND_ON:Ljava/lang/String;

.field private temp_HDR_EFFECT_ON:Ljava/lang/String;

.field private temp_LDU_ON:Ljava/lang/String;

.field private temp_REAL_HDR_ON:Ljava/lang/String;

.field private temp_mName:Ljava/lang/String;

.field private temp_mTitle:Ljava/lang/String;

.field private temt_mScaleFactor:F


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v8, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DEBUG:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/lcd/panel/irc_mode"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const-string/jumbo v2, "color_blind_on"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    const-string/jumbo v2, "color_blind_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    const-string/jumbo v2, "real_hdr_on"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    const-string/jumbo v2, "real_hdr_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    const-string/jumbo v2, "ldu_on_1"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_1:Ljava/lang/String;

    const-string/jumbo v2, "ldu_on_2"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_2:Ljava/lang/String;

    const-string/jumbo v2, "ldu_on_3"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_3:Ljava/lang/String;

    const-string/jumbo v2, "ldu_on_4"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_4:Ljava/lang/String;

    const-string/jumbo v2, "ldu_on_5"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_5:Ljava/lang/String;

    const-string/jumbo v2, "ldu_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_OFF:Ljava/lang/String;

    const-string/jumbo v2, "hdr_effect_on_1"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_1:Ljava/lang/String;

    const-string/jumbo v2, "hdr_effect_on_2"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_2:Ljava/lang/String;

    const-string/jumbo v2, "hdr_effect_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_OFF:Ljava/lang/String;

    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "ro.build.scafe.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/16 v2, 0xb

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionScaleFactor:I

    iput v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBrightnessFactor:I

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v2, :cond_fd

    new-instance v2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    :cond_fd
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v2, :cond_108

    new-instance v2, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v2, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    :cond_108
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/16 v3, 0xff

    if-le v2, v3, :cond_111

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    :cond_111
    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUseMdnieScenarioControlServiceConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUseBigDataLoggingServiceConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v0, 0x0

    :goto_16c
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_188

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16c

    :cond_188
    new-array v2, v8, [F

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v0, 0x0

    :goto_18d
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1a9

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18d

    :cond_1a9
    new-instance v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "high_brightness_mode_pms_enter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method private calculateAlphaBlendingValue(F)F
    .registers 8

    const/high16 v0, 0x43000000    # 128.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_35

    float-to-double v0, p1

    const-wide v2, 0x3ffab367a0f9096cL    # 1.6688

    mul-double/2addr v0, v2

    const-wide v2, 0x404d2c8b43958106L    # 58.348

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    :goto_15
    iget-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    const-wide v2, 0x3ec92a7380000000L    # 3.000000106112566E-6

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    const-wide v4, 0x3f689374bc6a7efaL    # 0.003

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3febe28240b78034L    # 0.8714

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    return v0

    :cond_35
    float-to-double v0, p1

    const-wide v2, 0x3fa212d77318fc50L    # 0.0353

    mul-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ffe793dd97f62b7L    # 1.9046

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    goto :goto_15
.end method

.method private controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string/jumbo v2, "application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_69

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_69
    :goto_69
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    :cond_75
    return-void

    :cond_76
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_69

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto :goto_69
.end method

.method private getting_auto_brightness_mode_enabled()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_16

    :goto_11
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    return v1

    :cond_16
    move v1, v2

    goto :goto_11
.end method

.method private getting_platform_brightness_value()F
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    return v1
.end method

.method private setting_is_changed()V
    .registers 12

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_16d

    move v2, v3

    :goto_15
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_170

    move v2, v3

    :goto_21
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_173

    move v2, v3

    :goto_2d
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    const-string/jumbo v2, "high_brightness_mode_pms_enter"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_176

    move v2, v3

    :goto_39
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_179

    move v2, v3

    :goto_45
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_17c

    move v2, v3

    :goto_51
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mHighBrightnessModeEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mBlueLightFilterModeEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mHighDynamicRangeEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez v2, :cond_17f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBlueLightFilterModeEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17f

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    const-string/jumbo v5, "IRC Mode : flat_gamma_mode"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    const-string/jumbo v2, "limit_brightness_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    if-nez v2, :cond_cc

    const-string/jumbo v2, "100, 100"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    :cond_cc
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    :try_start_ef
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    if-eqz v2, :cond_14b

    const-string/jumbo v2, "2016B"

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14b

    const-string/jumbo v2, "2017A"

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14b

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSCafeVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    const/4 v6, 0x1

    aput-object v5, v2, v6
    :try_end_14b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ef .. :try_end_14b} :catch_18f

    :cond_14b
    :goto_14b
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v2, :cond_1fb

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x50

    if-ne v2, v5, :cond_1ad

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    :cond_161
    :goto_161
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "PSM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    return-void

    :cond_16d
    move v2, v4

    goto/16 :goto_15

    :cond_170
    move v2, v4

    goto/16 :goto_21

    :cond_173
    move v2, v4

    goto/16 :goto_2d

    :cond_176
    move v2, v4

    goto/16 :goto_39

    :cond_179
    move v2, v4

    goto/16 :goto_45

    :cond_17c
    move v2, v4

    goto/16 :goto_51

    :cond_17f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    const-string/jumbo v5, "IRC Mode : moderato_mode"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    :catch_18f
    move-exception v0

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to read mSCafeVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    :cond_1ad
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x55

    if-ne v2, v5, :cond_1c0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_161

    :cond_1c0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1d3

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_161

    :cond_1d3
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1e7

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v9

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto/16 :goto_161

    :cond_1e7
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_161

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v10

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto/16 :goto_161

    :cond_1fb
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v2, :cond_26a

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x50

    if-ne v2, v5, :cond_21e

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    :cond_211
    :goto_211
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "UPSM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_21e
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x55

    if-ne v2, v4, :cond_231

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_211

    :cond_231
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_244

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_211

    :cond_244
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5f

    if-ne v2, v4, :cond_257

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v9

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_211

    :cond_257
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_211

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v10

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_211

    :cond_26a
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v2, :cond_281

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "EM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_281
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v2, :cond_28f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_28f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v2, :cond_16c

    :cond_28f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "DEFAULT"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16c
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_34

    :try_start_d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_22
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_27

    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_35

    const/4 v6, 0x1

    return v6

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    return v7

    :catch_27
    move-exception v1

    :goto_28
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    :goto_2e
    return v7

    :catch_2f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_34
    return v7

    :catch_35
    move-exception v1

    move-object v4, v5

    goto :goto_28
.end method


# virtual methods
.method public getAlphaBlendingValue()F
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->calculateAlphaBlendingValue(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    monitor-exit v1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F

    return v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getGalleryModeEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return v0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return v0
.end method

.method public onHdrStateChanged(Z)V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_10

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1a

    :cond_e
    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_e

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setGalleryModeEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setIRCompensationMode(Z)V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .registers 11

    const/high16 v8, 0x43800000    # 256.0f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_auto_brightness_mode_enabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_platform_brightness_value()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_15
    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_a8

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "color_blind_on"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "color_blind_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    :cond_65
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "color_blind_on"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    :cond_77
    :goto_77
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz v4, :cond_189

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "ColorBlind"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, ColorBlind, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_15 .. :try_end_a8} :catchall_b9

    :cond_a8
    :goto_a8
    monitor-exit v5

    return-void

    :cond_aa
    :try_start_aa
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "color_blind_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z
    :try_end_b8
    .catchall {:try_start_aa .. :try_end_b8} :catchall_b9

    goto :goto_77

    :catchall_b9
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_bc
    :try_start_bc
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "real_hdr_on"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "real_hdr_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    :cond_d2
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "real_hdr_on"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_77

    :cond_e5
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "real_hdr_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_77

    :cond_f4
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14f

    :cond_136
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "ldu_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_146

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_77

    :cond_146
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_77

    :cond_14f
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_on_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_170

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_on_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_170

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    :cond_170
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_off"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_180

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_77

    :cond_180
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_77

    :cond_189
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v4, :cond_1bc

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "RealHDR"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, RealHDR, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_1bc
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-eqz v4, :cond_2e6

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x5

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "LDU_1"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, LDU_1, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_1fa
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_234

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "LDU_2"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, LDU_2, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_234
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26e

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v6, 0x7

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "LDU_3"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, LDU_3, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_26e
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2aa

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v6, 0x8

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "LDU_4"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, LDU_4, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v8, 0x8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_2aa
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v6, "ldu_on_5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v6, 0x9

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "LDU_5"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, LDU_5, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v8, 0x9

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_2e6
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v4, :cond_41b

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_on_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33a

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "HDREffect_1"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, HDREffect_1, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_33a
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v6, "hdr_effect_on_2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    if-eqz v0, :cond_38c

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "HDREffect_2"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_38c
    if-nez v0, :cond_a8

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3dc

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "HDREffect_2"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessArray:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_3dc
    div-float v4, v8, v2

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "HDREffect_2"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-float v7, v8, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " auto_brightness_enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " platform_brightness_value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a8

    :cond_41b
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v6, 0xa

    aget v4, v4, v6

    const-string/jumbo v6, "application"

    const-string/jumbo v7, "DEFAULT"

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMultipleScreenBrightness , application, DEFAULT, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v8, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44a
    .catchall {:try_start_bc .. :try_end_44a} :catchall_b9

    goto/16 :goto_a8
.end method

.method public setScreenBrightnessForPreview(I)V
    .registers 7

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "2016B"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "2017A"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_2d
    const-string/jumbo v0, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenBrightnessForPreview : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5b

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_6e

    :cond_59
    :goto_59
    monitor-exit v1

    return-void

    :cond_5b
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_71

    :try_start_5f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_6e

    goto :goto_59

    :catchall_6e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_71
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_84

    :try_start_75
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_84
    const/16 v0, 0x55

    if-ne p1, v0, :cond_97

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_97
    const/16 v0, 0x50

    if-ne p1, v0, :cond_aa

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_aa
    if-nez p1, :cond_59

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v2, 0xa

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "DEFAULT"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V
    :try_end_be
    .catchall {:try_start_75 .. :try_end_be} :catchall_6e

    goto :goto_59
.end method

.method public setVideoModeEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
