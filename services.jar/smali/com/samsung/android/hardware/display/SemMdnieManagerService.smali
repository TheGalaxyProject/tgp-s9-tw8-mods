.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMdnieManagerService"


# instance fields
.field private final COLOR_LENS_MAX_COLOR:I

.field private final COLOR_LENS_MAX_LEVEL:I

.field private final COMMAND_FILE:Ljava/lang/String;

.field private final DEBUG:Z

.field private final DEV_POC:Ljava/lang/String;

.field private EFS_MDNIE_INFO:Ljava/lang/String;

.field private EFS_PANEL_INFO:Ljava/lang/String;

.field private final FACTORY_DEFAULT_INDEX_VALUE:I

.field private final FACTORY_WHITE_INDEX_SIZE:I

.field private final LCD_SRGB_MODE:I

.field private final MAX_POC_INDEX:I

.field private final MDNIE_SUPPORT_FUNCTION:I

.field private final NIGHT_MODE_MAX_INDEX:I

.field private final POC_IMAGE_MAX_NUM:I

.field private final POC_WHITE_DEFAULT_VALUE:I

.field private final POC_WHITE_INDEX_SIZE:I

.field private final PRESET_WHITE_INDEX_SIZE:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_APPLICATION_COMPLETE:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_APPLICATION_START:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_DEFAULT_POSITION:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_INDEX:Ljava/lang/String;

.field private final SEC_DISPLAY_POC_SUPPORT:Ljava/lang/String;

.field private final SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field private final SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field private final SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field private final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field private final SYSFS_POC_CELL_ID:Ljava/lang/String;

.field private final SYSFS_POC_CURRENT_INDEX:Ljava/lang/String;

.field private final SYSFS_POC_INFO:Ljava/lang/String;

.field private final SYSFS_POC_ORIGINAL_VECTOR:Ljava/lang/String;

.field private final SYSFS_POC_READ_COMPLETE:Ljava/lang/String;

.field private final SYSFS_POC_STATUS:Ljava/lang/String;

.field private final SYSFS_POC_TOTAL_FAIL_COUNT:Ljava/lang/String;

.field private final SYSFS_POC_TOTAL_TRY_COUNT:Ljava/lang/String;

.field private final SYSFS_POC_USER:Ljava/lang/String;

.field private USER_PANEL_INFO:Ljava/lang/String;

.field private afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mColorVision:Z

.field private mColorVisionColor:I

.field private mColorVisionLevel:I

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentPocIndex:I

.field private mCurtainModeIsRunning:Z

.field private mCustomScrBIndex:I

.field private mCustomScrGIndex:I

.field private mCustomScrRIndex:I

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mFactoryScrBIndex:I

.field private mFactoryScrGIndex:I

.field private mFactoryScrIndex:I

.field private mFactoryScrRIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mMPocElementSize:I

.field private mMdnieCustomized:Z

.field private mMdnieFactorySupported:Z

.field private mMdniePOCCurrentIndex:Z

.field private mMdniePOCFused:Z

.field private mMdniePOCGray:Z

.field private mMdniePOCInfoSupported:Z

.field private mMdniePOCSupported:Z

.field private mMdniePOCUsedExist:Z

.field private mMdnieWhiteRGBSupported:Z

.field private mMdnieWorkingCondition:Z

.field private mModelInfoArray:[I

.field private mModelInfoSize:I

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPOCAdjustWhiteRGB:[[I

.field private mPocElementArrayPOC1:[F

.field private mPocElementArrayPOC2:[I

.field private mPocFused:I

.field private mPocIndex:I

.field private mPocScrIndex:I

.field private mPocSupport255:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPresetAdjustWhiteRGB:[[I

.field private mPresetScrIndex:I

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mResourcePocConfig:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field private mSupportBlueFilter:Z

.field private mSupportColorAdjustment:Z

.field private mSupportContentMode:Z

.field private mSupportContentModeGame:Z

.field private mSupportContentModeVideoEnhance:Z

.field private mSupportGrayscale:Z

.field private mSupportHDR:Z

.field private mSupportHMT:Z

.field private mSupportLightNotificationMode:Z

.field private mSupportNegative:Z

.field private mSupportScreeenReadingMode:Z

.field private mSupportScreenCurtain:Z

.field private mSupportScreenMode:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseAfterimageCompensationServiceConfig:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    const/4 v12, -0x6

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    const-string/jumbo v5, "eng"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    iput-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string/jumbo v5, "screen_mode_automatic_setting"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v5, "screen_mode_setting"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_temperature_red"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_temperature_green"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_temperature_blue"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_preset_index"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_poc_index"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_INDEX:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_poc_default_position"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_DEFAULT_POSITION:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_poc_support"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_SUPPORT:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_poc_application_start"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_APPLICATION_START:Ljava/lang/String;

    const-string/jumbo v5, "sec_display_poc_application_complete"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_POC_APPLICATION_COMPLETE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/mode"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/scenario"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/negative"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/color_lens"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/whiteRGB"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/light_notification"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

    const-string/jumbo v5, "/dev/poc"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEV_POC:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/lcd/panel/poc"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_STATUS:Ljava/lang/String;

    const-string/jumbo v5, "/efs/FactoryApp/poc_info"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_INFO:Ljava/lang/String;

    const-string/jumbo v5, "/efs/poc/current_index"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_CURRENT_INDEX:Ljava/lang/String;

    const-string/jumbo v5, "/efs/etc/poc/org.vec"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_ORIGINAL_VECTOR:Ljava/lang/String;

    const-string/jumbo v5, "/efs/FactoryApp/mdnie"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    const-string/jumbo v5, "/efs/FactoryApp/poc_done"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_READ_COMPLETE:Ljava/lang/String;

    const-string/jumbo v5, "/sys/class/lcd/panel/cell_id"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    const-string/jumbo v5, "/efs/etc/poc/cell_id"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_CELL_ID:Ljava/lang/String;

    const-string/jumbo v5, "/efs/etc/poc/totalfailcount"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_TOTAL_FAIL_COUNT:Ljava/lang/String;

    const-string/jumbo v5, "/efs/etc/poc/totaltrycount"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_TOTAL_TRY_COUNT:Ljava/lang/String;

    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_POC_USER:Ljava/lang/String;

    const-string/jumbo v5, "/cache/recovery/command"

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COMMAND_FILE:Ljava/lang/String;

    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    const/16 v5, 0xb

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    const/16 v5, 0xc

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_COLOR:I

    const/16 v5, 0x9

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_LEVEL:I

    const/16 v5, 0x168

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MAX_POC_INDEX:I

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    const-string/jumbo v5, "65303"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const/4 v5, 0x7

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_WHITE_INDEX_SIZE:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_DEFAULT_INDEX_VALUE:I

    const/16 v5, 0xc

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->PRESET_WHITE_INDEX_SIZE:I

    const/4 v5, 0x6

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_WHITE_INDEX_SIZE:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_WHITE_DEFAULT_VALUE:I

    const/16 v5, 0x24

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->POC_IMAGE_MAX_NUM:I

    iput-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    iput-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_MDNIE_INFO:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    const/16 v5, 0xc

    new-array v5, v5, [[I

    filled-new-array {v7, v12, v7}, [I

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, -0x3

    filled-new-array {v7, v8, v7}, [I

    move-result-object v8

    aput-object v8, v5, v6

    filled-new-array {v7, v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/4 v8, -0x3

    const/4 v9, -0x3

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v5, v9

    filled-new-array {v12, v7, v12}, [I

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v5, v9

    const/16 v8, -0x9

    const/16 v9, -0x9

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v5, v9

    const/16 v8, -0xc

    const/16 v9, -0xc

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v5, v9

    const/16 v8, -0xf

    const/16 v9, -0xf

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v5, v9

    const/16 v8, -0x12

    const/16 v9, -0x12

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v5, v9

    const/16 v8, -0x15

    const/16 v9, -0x15

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v5, v9

    const/16 v8, -0x18

    const/16 v9, -0x18

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/16 v9, 0xa

    aput-object v8, v5, v9

    const/16 v8, -0x1b

    const/16 v9, -0x1b

    filled-new-array {v8, v7, v9}, [I

    move-result-object v8

    const/16 v9, 0xb

    aput-object v8, v5, v9

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    const/4 v5, 0x6

    new-array v5, v5, [[I

    filled-new-array {v7, v10, v10}, [I

    move-result-object v8

    aput-object v8, v5, v7

    filled-new-array {v7, v7, v7}, [I

    move-result-object v8

    aput-object v8, v5, v6

    filled-new-array {v10, v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/4 v8, -0x4

    filled-new-array {v8, v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v5, v9

    filled-new-array {v12, v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v5, v9

    const/4 v8, -0x8

    filled-new-array {v8, v7, v7}, [I

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v5, v9

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iput-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v5, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4cb

    move v5, v6

    :goto_22d
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4ce

    move v5, v6

    :goto_236
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4d1

    move v5, v6

    :goto_23f
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4d4

    move v5, v6

    :goto_248
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4d7

    move v5, v6

    :goto_251
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_4da

    move v5, v6

    :goto_25a
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4dd

    move v5, v6

    :goto_263
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_4e0

    move v5, v6

    :goto_26c
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_4e3

    move v5, v6

    :goto_275
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_4e6

    move v5, v6

    :goto_27e
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_4e9

    move v5, v6

    :goto_287
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_4ec

    move v5, v6

    :goto_290
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    const v8, 0x8000

    and-int/2addr v5, v8

    if-eqz v5, :cond_4ef

    move v5, v6

    :goto_29b
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "sec_display_preset_index"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "sec_display_poc_index"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v4, v5, v7, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v8, p0, v11}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;)V

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/efs/FactoryApp/mdnie"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31c

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    :cond_31c
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32c

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    :cond_32c
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/sys/class/lcd/panel/poc"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_33e

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iput-boolean v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_33e
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/efs/poc/current_index"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_34e

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    :cond_34e
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/efs/FactoryApp/poc_info"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_35e

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    :cond_35e
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    and-int/2addr v5, v8

    if-eqz v5, :cond_368

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    :cond_368
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v5, :cond_36f

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    :cond_36f
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    and-int/2addr v5, v8

    if-eqz v5, :cond_379

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCInfo()V

    :cond_379
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_poc_default_position"

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    invoke-static {v5, v8, v9, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "SemMdnieManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SYSFS_MDNIE_FACTORY_MDNIE : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mMdnieWhiteRGBSupported - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SemMdnieManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMdniePOCSupported : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SemMdnieManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mMdniePOCSupported : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mMdniePOCInfoSupported - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_mode_automatic_setting"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4f2

    move v5, v6

    :goto_405
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_mode_setting"

    invoke-static {v5, v8, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v5, :cond_41d

    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    :cond_41d
    iput v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v5, :cond_437

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->update_cell_id()V

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->update_mdnie_info()V

    :cond_437
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    if-eqz v5, :cond_451

    new-instance v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {v5, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    :cond_451
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mResourcePocConfig:Z

    if-eqz v5, :cond_546

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    const-string/jumbo v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMPocElementSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_4b2
    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMPocElementSize:I

    if-ge v0, v5, :cond_4f5

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b2

    :cond_4cb
    move v5, v7

    goto/16 :goto_22d

    :cond_4ce
    move v5, v7

    goto/16 :goto_236

    :cond_4d1
    move v5, v7

    goto/16 :goto_23f

    :cond_4d4
    move v5, v7

    goto/16 :goto_248

    :cond_4d7
    move v5, v7

    goto/16 :goto_251

    :cond_4da
    move v5, v7

    goto/16 :goto_25a

    :cond_4dd
    move v5, v7

    goto/16 :goto_263

    :cond_4e0
    move v5, v7

    goto/16 :goto_26c

    :cond_4e3
    move v5, v7

    goto/16 :goto_275

    :cond_4e6
    move v5, v7

    goto/16 :goto_27e

    :cond_4e9
    move v5, v7

    goto/16 :goto_287

    :cond_4ec
    move v5, v7

    goto/16 :goto_290

    :cond_4ef
    move v5, v7

    goto/16 :goto_29b

    :cond_4f2
    move v5, v7

    goto/16 :goto_405

    :cond_4f5
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    const-string/jumbo v5, "SemMdnieManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mModelInfoSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoSize:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_534
    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    array-length v5, v5

    if-ge v0, v5, :cond_546

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    aget-object v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_534

    :cond_546
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method private checkContentMode(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_9

    packed-switch p1, :pswitch_data_1a

    :pswitch_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    :pswitch_a
    const/4 v0, 0x1

    goto :goto_9

    :pswitch_c
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :pswitch_12
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :pswitch_18
    const/4 v0, 0x1

    goto :goto_9

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_12
        :pswitch_12
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method

.method private checkScreenMode(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_9

    packed-switch p1, :pswitch_data_1e

    :pswitch_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x5

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    :pswitch_16
    const/4 v0, 0x1

    goto :goto_9

    :pswitch_18
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_8
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method private getPOCInfo()V
    .registers 14

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_4
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v9, "/efs/FactoryApp/poc_info"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_c} :catch_eb
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_9c
    .catchall {:try_start_4 .. :try_end_c} :catchall_13c

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_18f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_198
    .catchall {:try_start_c .. :try_end_11} :catchall_188

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4f

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_33

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    :cond_33
    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPOCInfo : mPocIndex - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_4f} :catch_193
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_4f} :catch_19c
    .catchall {:try_start_11 .. :try_end_4f} :catchall_18b

    :cond_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5c

    :cond_54
    :goto_54
    if-eqz v5, :cond_59

    :try_start_56
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_7c

    :cond_59
    :goto_59
    move-object v0, v1

    move-object v4, v5

    :cond_5b
    :goto_5b
    return-void

    :catch_5c
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catch_7c
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :catch_9c
    move-exception v3

    :goto_9d
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_13c

    if-eqz v0, :cond_a5

    :try_start_a2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_cb

    :cond_a5
    :goto_a5
    if-eqz v4, :cond_5b

    :try_start_a7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_5b

    :catch_ab
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_cb
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :catch_eb
    move-exception v2

    :goto_ec
    :try_start_ec
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_13c

    if-eqz v0, :cond_f4

    :try_start_f1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_11c

    :cond_f4
    :goto_f4
    if-eqz v4, :cond_5b

    :try_start_f6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fb

    goto/16 :goto_5b

    :catch_fb
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    :catch_11c
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    :catchall_13c
    move-exception v9

    :goto_13d
    if-eqz v0, :cond_142

    :try_start_13f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_148

    :cond_142
    :goto_142
    if-eqz v4, :cond_147

    :try_start_144
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_168

    :cond_147
    :goto_147
    throw v9

    :catch_148
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BufferedReader Close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_142

    :catch_168
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FileReader Close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    :catchall_188
    move-exception v9

    move-object v4, v5

    goto :goto_13d

    :catchall_18b
    move-exception v9

    move-object v0, v1

    move-object v4, v5

    goto :goto_13d

    :catch_18f
    move-exception v2

    move-object v4, v5

    goto/16 :goto_ec

    :catch_193
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_ec

    :catch_198
    move-exception v3

    move-object v4, v5

    goto/16 :goto_9d

    :catch_19c
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_9d
.end method

.method private getPOCStatus()V
    .registers 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_5
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v9, "/sys/class/lcd/panel/poc"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_d} :catch_240
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_17b
    .catchall {:try_start_5 .. :try_end_d} :catchall_1ed

    :try_start_d
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_243
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_247
    .catchall {:try_start_d .. :try_end_12} :catchall_239

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f8

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v9, v11, :cond_105

    if-nez v6, :cond_105

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    :goto_48
    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    if-eqz v9, :cond_4f

    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    :cond_4f
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "33"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v9, v11, :cond_66

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_66
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "64"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    if-ne v9, v11, :cond_7d

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    :cond_7d
    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPOCStatus : mPocFused - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ischecksum - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mMdniePOCGray - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getPOCStatus : scrDatas[2].trim() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mPocSupport255 - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocSupport255:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_f8} :catch_10a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_f8} :catch_24b
    .catchall {:try_start_12 .. :try_end_f8} :catchall_23c

    :cond_f8
    if-eqz v1, :cond_fd

    :try_start_fa
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_13b

    :cond_fd
    :goto_fd
    if-eqz v5, :cond_102

    :try_start_ff
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_15b

    :cond_102
    :goto_102
    move-object v0, v1

    move-object v4, v5

    :cond_104
    :goto_104
    return-void

    :cond_105
    const/4 v9, 0x0

    :try_start_106
    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z
    :try_end_108
    .catch Ljava/io/FileNotFoundException; {:try_start_106 .. :try_end_108} :catch_10a
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_108} :catch_24b
    .catchall {:try_start_106 .. :try_end_108} :catchall_23c

    goto/16 :goto_48

    :catch_10a
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    :goto_10d
    :try_start_10d
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_1ed

    if-eqz v0, :cond_115

    :try_start_112
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_1cc

    :cond_115
    :goto_115
    if-eqz v4, :cond_104

    :try_start_117
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_104

    :catch_11b
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    :catch_13b
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    :catch_15b
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    :catch_17b
    move-exception v3

    :goto_17c
    :try_start_17c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_1ed

    if-eqz v0, :cond_184

    :try_start_181
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_1ac

    :cond_184
    :goto_184
    if-eqz v4, :cond_104

    :try_start_186
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_18b

    goto/16 :goto_104

    :catch_18b
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_104

    :catch_1ac
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :catch_1cc
    move-exception v3

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_115

    :catchall_1ed
    move-exception v9

    :goto_1ee
    if-eqz v0, :cond_1f3

    :try_start_1f0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_1f9

    :cond_1f3
    :goto_1f3
    if-eqz v4, :cond_1f8

    :try_start_1f5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f8} :catch_219

    :cond_1f8
    :goto_1f8
    throw v9

    :catch_1f9
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BufferedReader Close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f3

    :catch_219
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FileReader Close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f8

    :catchall_239
    move-exception v9

    move-object v4, v5

    goto :goto_1ee

    :catchall_23c
    move-exception v9

    move-object v0, v1

    move-object v4, v5

    goto :goto_1ee

    :catch_240
    move-exception v2

    goto/16 :goto_10d

    :catch_243
    move-exception v2

    move-object v4, v5

    goto/16 :goto_10d

    :catch_247
    move-exception v3

    move-object v4, v5

    goto/16 :goto_17c

    :catch_24b
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_17c
.end method

.method private getPocCurrentUser()I
    .registers 14

    const/4 v7, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/efs/FactoryApp/poc_user"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_69

    move-result v9

    if-eqz v9, :cond_48

    const/4 v3, 0x0

    :try_start_10
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_6e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_98

    :try_start_1a
    const-string/jumbo v8, "0"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3b

    const-string/jumbo v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_3b
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_42} :catch_c2
    .catchall {:try_start_1a .. :try_end_42} :catchall_bf

    move-result v7

    if-eqz v4, :cond_48

    :try_start_45
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_69

    :cond_48
    :goto_48
    return v7

    :catch_49
    move-exception v0

    :try_start_4a
    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_69

    goto :goto_48

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :catch_6e
    move-exception v1

    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_98

    if-eqz v3, :cond_48

    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_69

    goto :goto_48

    :catch_78
    move-exception v0

    :try_start_79
    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_97} :catch_69

    goto :goto_48

    :catchall_98
    move-exception v9

    :goto_99
    if-eqz v3, :cond_9e

    :try_start_9b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_69

    :cond_9e
    :goto_9e
    :try_start_9e
    throw v9

    :catch_9f
    move-exception v0

    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BufferedReader Close IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_be} :catch_69

    goto :goto_9e

    :catchall_bf
    move-exception v9

    move-object v3, v4

    goto :goto_99

    :catch_c2
    move-exception v1

    move-object v3, v4

    goto :goto_6f
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/16 v11, 0x80

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x80

    new-array v1, v11, [B

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v11, :cond_12

    aput-byte v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    if-eqz p1, :cond_1f

    :try_start_14
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    :cond_1f
    if-eqz v5, :cond_35

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_32

    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v7, -0x1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v12, 0x0

    invoke-direct {v9, v1, v12, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v9

    :cond_32
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_46
    .catchall {:try_start_14 .. :try_end_35} :catchall_96

    :cond_35
    if-eqz v5, :cond_3a

    :try_start_37
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-object v8

    :catch_3b
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catch_46
    move-exception v2

    :try_start_47
    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , length : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_47 .. :try_end_85} :catchall_96

    if-eqz v5, :cond_3a

    :try_start_87
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_3a

    :catch_8b
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catchall_96
    move-exception v10

    if-eqz v5, :cond_9c

    :try_start_99
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    :cond_9c
    :goto_9c
    throw v10

    :catch_9d
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c
.end method

.method private static native nativeMergeVectorPOC1(III[I[F)I
.end method

.method private static native nativeMergeVectorPOC2(III[I[I)I
.end method

.method private static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_4
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_aa
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_5d
    .catchall {:try_start_4 .. :try_end_9} :catchall_f9

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_14a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_153
    .catchall {:try_start_9 .. :try_end_e} :catchall_143

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_14e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_157
    .catchall {:try_start_e .. :try_end_11} :catchall_146

    move-result-object v7

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1f

    :cond_17
    :goto_17
    if-eqz v6, :cond_1c

    :try_start_19
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3e

    :cond_1c
    :goto_1c
    move-object v0, v1

    move-object v5, v6

    :cond_1e
    :goto_1e
    return-object v7

    :catch_1f
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_17

    :catch_3e
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c

    :catch_5d
    move-exception v3

    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_f9

    if-eqz v0, :cond_66

    :try_start_63
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_8b

    :cond_66
    :goto_66
    if-eqz v5, :cond_1e

    :try_start_68
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_1e

    :catch_6c
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e

    :catch_8b
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_66

    :catch_aa
    move-exception v2

    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_f9

    if-eqz v0, :cond_b3

    :try_start_b0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_da

    :cond_b3
    :goto_b3
    if-eqz v5, :cond_1e

    :try_start_b5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_1e

    :catch_ba
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1e

    :catch_da
    move-exception v3

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BufferedReader Close IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b3

    :catchall_f9
    move-exception v8

    :goto_fa
    if-eqz v0, :cond_ff

    :try_start_fc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_105

    :cond_ff
    :goto_ff
    if-eqz v5, :cond_104

    :try_start_101
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_124

    :cond_104
    :goto_104
    throw v8

    :catch_105
    move-exception v3

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BufferedReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ff

    :catch_124
    move-exception v3

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FileReader Close IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_104

    :catchall_143
    move-exception v8

    move-object v5, v6

    goto :goto_fa

    :catchall_146
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    goto :goto_fa

    :catch_14a
    move-exception v2

    move-object v5, v6

    goto/16 :goto_ab

    :catch_14e
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_ab

    :catch_153
    move-exception v3

    move-object v5, v6

    goto/16 :goto_5e

    :catch_157
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto/16 :goto_5e
.end method

.method private setFactoryWhiteRGB()V
    .registers 16

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_6
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v11, "/efs/FactoryApp/mdnie"

    invoke-direct {v5, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_e} :catch_141
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f1
    .catchall {:try_start_6 .. :try_end_e} :catchall_192

    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1ee
    .catchall {:try_start_e .. :try_end_13} :catchall_1de

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_75

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrG - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrB - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_75} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_75} :catch_1f2
    .catchall {:try_start_13 .. :try_end_75} :catchall_1e1

    :cond_75
    if-eqz v1, :cond_7a

    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_b1

    :cond_7a
    :goto_7a
    if-eqz v5, :cond_7f

    :try_start_7c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_d1

    :cond_7f
    :goto_7f
    move-object v0, v1

    move-object v4, v5

    :cond_81
    :goto_81
    if-gtz v9, :cond_b0

    const/16 v11, -0x28

    if-lt v9, v11, :cond_b0

    if-gtz v8, :cond_b0

    const/16 v11, -0x28

    if-lt v8, v11, :cond_b0

    if-gtz v6, :cond_b0

    const/16 v11, -0x28

    if-lt v6, v11, :cond_b0

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    div-int/lit8 v11, v9, 0x3

    neg-int v11, v11

    iput v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iget v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    if-ltz v11, :cond_a7

    iget v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    const/4 v12, 0x7

    if-le v11, v12, :cond_aa

    :cond_a7
    const/4 v11, 0x0

    iput v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    :cond_aa
    const-string/jumbo v11, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v11, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b0
    return-void

    :catch_b1
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_d1
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :catch_f1
    move-exception v3

    :goto_f2
    :try_start_f2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_192

    if-eqz v0, :cond_fa

    :try_start_f7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_121

    :cond_fa
    :goto_fa
    if-eqz v4, :cond_81

    :try_start_fc
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_100

    goto :goto_81

    :catch_100
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    :catch_121
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :catch_141
    move-exception v2

    :goto_142
    :try_start_142
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_192

    if-eqz v0, :cond_14a

    :try_start_147
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_172

    :cond_14a
    :goto_14a
    if-eqz v4, :cond_81

    :try_start_14c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_151

    goto/16 :goto_81

    :catch_151
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    :catch_172
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14a

    :catchall_192
    move-exception v11

    :goto_193
    if-eqz v0, :cond_198

    :try_start_195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_19e

    :cond_198
    :goto_198
    if-eqz v4, :cond_19d

    :try_start_19a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1be

    :cond_19d
    :goto_19d
    throw v11

    :catch_19e
    move-exception v3

    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BufferedReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    :catch_1be
    move-exception v3

    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FileReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d

    :catchall_1de
    move-exception v11

    move-object v4, v5

    goto :goto_193

    :catchall_1e1
    move-exception v11

    move-object v0, v1

    move-object v4, v5

    goto :goto_193

    :catch_1e5
    move-exception v2

    move-object v4, v5

    goto/16 :goto_142

    :catch_1e9
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_142

    :catch_1ee
    move-exception v3

    move-object v4, v5

    goto/16 :goto_f2

    :catch_1f2
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_f2
.end method

.method private setting_is_changed()V
    .registers 16

    const/4 v14, 0x2

    const/16 v13, -0x28

    const/4 v12, 0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_mode_setting"

    invoke-static {v8, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_temperature_red"

    invoke-static {v8, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_temperature_green"

    invoke-static {v8, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_temperature_blue"

    invoke-static {v8, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_preset_index"

    invoke-static {v8, v9, v14, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_poc_index"

    invoke-static {v8, v9, v11, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sec_display_poc_application_start"

    invoke-static {v8, v9, v11, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    if-eq v8, v9, :cond_7b

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v8, :cond_7b

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_14d

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8, v12}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    :cond_7b
    :goto_7b
    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v8, :cond_14c

    const-string/jumbo v8, "SemMdnieManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting_is_changed - R("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), G("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), B("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iput v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v8, :cond_ea

    iget-boolean v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    if-eqz v8, :cond_ea

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    if-ltz v8, :cond_cd

    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    const/4 v9, 0x6

    if-lt v8, v9, :cond_cf

    :cond_cd
    iput v12, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    :cond_cf
    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v8, v8, v9

    aget v8, v8, v11

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v8, v8, v9

    aget v8, v8, v12

    add-int/2addr v4, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    aget-object v8, v8, v9

    aget v8, v8, v14

    add-int/2addr v3, v8

    :cond_ea
    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    add-int v5, v8, v2

    if-ltz v5, :cond_10b

    const/16 v8, 0xc

    if-ge v5, v8, :cond_10b

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v8, v8, v5

    aget v8, v8, v11

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v8, v8, v5

    aget v8, v8, v12

    add-int/2addr v4, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v8, v8, v5

    aget v8, v8, v14

    add-int/2addr v3, v8

    :cond_10b
    if-gtz v6, :cond_14c

    if-lt v6, v13, :cond_14c

    if-gtz v4, :cond_14c

    if-lt v4, v13, :cond_14c

    if-gtz v3, :cond_14c

    if-lt v3, v13, :cond_14c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v8, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14c
    return-void

    :cond_14d
    iget v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7b

    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8, v11}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    goto/16 :goto_7b
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

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1d

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2a

    const/4 v5, 0x1

    return v5

    :catch_18
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    return v6

    :catch_1d
    move-exception v1

    :goto_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_21
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    :goto_24
    return v6

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    :catch_2a
    move-exception v1

    move-object v3, v4

    goto :goto_1e
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_b6
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_c0} :catch_cb
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c0} :catch_d0

    :try_start_c0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ca} :catch_dd

    return v9

    :catch_cb
    move-exception v0

    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    return v8

    :catch_d0
    move-exception v1

    :goto_d1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_d4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    :goto_d7
    return v8

    :catch_d8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d7

    :catch_dd
    move-exception v1

    move-object v4, v5

    goto :goto_d1
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_ef
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_f9} :catch_104
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f9} :catch_109

    :try_start_f9
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_103} :catch_116

    return v9

    :catch_104
    move-exception v0

    :try_start_105
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    return v8

    :catch_109
    move-exception v1

    :goto_10a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_10d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_110} :catch_111

    :goto_110
    return v8

    :catch_111
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_110

    :catch_116
    move-exception v1

    move-object v4, v5

    goto :goto_10a
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_b6
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_c0} :catch_cb
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c0} :catch_d0

    :try_start_c0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ca} :catch_dd

    return v9

    :catch_cb
    move-exception v0

    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    return v8

    :catch_d0
    move-exception v1

    :goto_d1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_d4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_d8

    :goto_d7
    return v8

    :catch_d8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d7

    :catch_dd
    move-exception v1

    move-object v4, v5

    goto :goto_d1
.end method

.method private update_cell_id()V
    .registers 5

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "update_cell_id() function call"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    const-string/jumbo v1, "/sys/class/lcd/panel/cell_id"

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_194

    :goto_12
    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USER_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/cell_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1dc

    :try_start_3c
    const-string/jumbo v1, "/efs/etc/poc/cell_id"

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EFS_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_61} :catch_19a

    :goto_61
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    if-eqz v1, :cond_1a0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a0

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "/efs/etc/poc/cell_id"

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sysfsWriteSting success_1 USER_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , EFS_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/org.vec"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d3

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/org.vec"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "SYSFS_POC_ORIGINAL_VECTOR).delete() success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_user"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f8

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_user"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_f8

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "SYSFS_POC_USER).delete() success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/totalfailcount"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11d

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/totalfailcount"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "SYSFS_POC_TOTAL_FAIL_COUNT).delete() success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/totaltrycount"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_142

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/totaltrycount"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_142

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "SYSFS_POC_TOTAL_TRY_COUNT).delete() success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_142
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_175

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_175

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_175

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "SYSFS_POC_INFO).delete() success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_175
    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMdnieFisrtUsed() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMdnieFisrtUsed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_193
    :goto_193
    return-void

    :catch_194
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    :catch_19a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_61

    :cond_1a0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    if-nez v1, :cond_1d2

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "EFS_PANEL_INFO value is NULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "/efs/etc/poc/cell_id"

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    :cond_1d2
    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    :cond_1dc
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/etc/poc/cell_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_193

    const-string/jumbo v1, "/efs/etc/poc/cell_id"

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_193

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sysfsWriteSting success_2 USER_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->USER_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , EFS_PANEL_INFO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->EFS_PANEL_INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_193
.end method

.method private update_mdnie_info()V
    .registers 5

    const-string/jumbo v1, "SemMdnieManagerService"

    const-string/jumbo v2, "update_mdnie_info"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/poc_user"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPocCurrentUser()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_22

    const/4 v1, -0x1

    if-ge v0, v1, :cond_42

    :cond_22
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    :cond_25
    :goto_25
    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update_mdnie_info - mPocScrIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    goto :goto_25

    :cond_47
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCInfoSupported:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    goto :goto_25
.end method


# virtual methods
.method public getContentMode()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getCurrentPocIndex()I
    .registers 14

    const/16 v12, 0x80

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x80

    new-array v1, v12, [B

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCCurrentIndex:Z

    if-eqz v10, :cond_44

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v12, :cond_16

    aput-byte v11, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    :try_start_16
    const-string/jumbo v10, "/efs/poc/current_index"

    if-eqz v10, :cond_29

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "/efs/poc/current_index"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    :cond_29
    if-eqz v5, :cond_3f

    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3c

    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v7, -0x1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v12, 0x0

    invoke-direct {v9, v1, v12, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v8, v9

    :cond_3c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_58
    .catchall {:try_start_16 .. :try_end_3f} :catchall_a8

    :cond_3f
    if-eqz v5, :cond_44

    :try_start_41
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_4d

    :cond_44
    :goto_44
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurrentPocIndex:I

    iget v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurrentPocIndex:I

    return v10

    :catch_4d
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catch_58
    move-exception v2

    :try_start_59
    const-string/jumbo v10, "SemMdnieManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , length : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_59 .. :try_end_97} :catchall_a8

    if-eqz v5, :cond_44

    :try_start_99
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_44

    :catch_9d
    move-exception v3

    const-string/jumbo v10, "SemMdnieManagerService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catchall_a8
    move-exception v10

    if-eqz v5, :cond_ae

    :try_start_ab
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    :cond_ae
    :goto_ae
    throw v10

    :catch_af
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae
.end method

.method public getPocSettingValue()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocIndex:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getSupportedContentMode()[I
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mSupportContentMode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_40

    const/4 v1, 0x6

    :cond_40
    new-array v0, v1, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_5a

    aput v5, v0, v5

    aput v6, v0, v6

    const/4 v2, 0x2

    aput v7, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x3

    aput v2, v0, v3

    const/16 v2, 0x8

    aput v2, v0, v7

    const/16 v2, 0x9

    const/4 v3, 0x5

    aput v2, v0, v3

    :cond_5a
    return-object v0
.end method

.method public getSupportedScreenMode()[I
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_25

    const/4 v1, 0x5

    :goto_f
    new-array v0, v1, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_2f

    aput v3, v0, v3

    aput v4, v0, v4

    aput v6, v0, v6

    const/4 v2, 0x3

    aput v5, v0, v2

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_24

    aput v7, v0, v5

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    const/4 v1, 0x4

    goto :goto_f

    :cond_27
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_2d

    const/4 v1, 0x2

    goto :goto_f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_f

    :cond_2f
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_24

    aput v5, v0, v3

    aput v7, v0, v4

    goto :goto_24
.end method

.method public isContentModeSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isMdnieFisrtUsed()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/etc/poc/org.vec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    :goto_11
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    return v0

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    goto :goto_11
.end method

.method public isMdniePocFused()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/poc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    :goto_11
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    return v0

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCFused:Z

    goto :goto_11
.end method

.method public isMdniePocSupported()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/lcd/panel/poc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->getPOCStatus()V

    :goto_11
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    goto :goto_11
.end method

.method public isScreenModeSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setAmoledACL(I)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_17

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    const-string/jumbo v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit v1

    return v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    return v1
.end method

.method public setColorVision(ZII)Z
    .registers 11

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eqz p1, :cond_5c

    const/4 v0, 0x1

    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-ltz p2, :cond_5f

    const/16 v4, 0xc

    if-gt p2, v4, :cond_5f

    if-ltz p3, :cond_5f

    const/16 v4, 0x9

    if-gt p3, v4, :cond_5f

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4a
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/color_lens"

    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    iput p3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_60

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_5c
    const/4 v0, 0x0

    goto :goto_c

    :cond_5e
    monitor-exit v5

    :cond_5f
    return v6

    :catchall_60
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setContentMode(I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_28

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2a

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_27
    monitor-exit v3

    :cond_28
    const/4 v2, 0x0

    return v2

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLightNotificationMode(Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/light_notification"

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    :cond_16
    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1c

    move-result v2

    monitor-exit v3

    return v2

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1f
    return v2
.end method

.method public setNightMode(ZI)Z
    .registers 10

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eqz p1, :cond_49

    const/4 v0, 0x1

    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v4, :cond_4c

    if-ltz p2, :cond_4c

    const/16 v4, 0xb

    if-gt p2, v4, :cond_4c

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_39
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/night_mode"

    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_4d

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_49
    const/4 v0, 0x0

    goto :goto_c

    :cond_4b
    monitor-exit v5

    :cond_4c
    return v6

    :catchall_4d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setPocCancel()Z
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v2, "SemMdnieManagerService"

    const-string/jumbo v3, "setPocCancel"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/lcd/panel/poc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "SemMdnieManagerService"

    const-string/jumbo v3, "setPocCancel No SYSFS_POC_STATUS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2a
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCSupported:Z

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "/sys/class/lcd/panel/poc"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    return v2

    :cond_3a
    return v4
.end method

.method public setPocSetting(I)Z
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v9, "SemMdnieManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setPocSetting index : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/dev/poc"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3c

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "setPocSetting No DEV_POC"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_3c
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/sys/class/lcd/panel/poc"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_55

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "setPocSetting No SYSFS_POC_STATUS"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_55
    const/4 v9, -0x1

    if-lt p1, v9, :cond_5b

    const/4 v9, 0x4

    if-le p1, v9, :cond_5d

    :cond_5b
    const/4 v9, 0x0

    return v9

    :cond_5d
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/efs/etc/poc/org.vec"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6f

    const/4 v0, 0x1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCUsedExist:Z

    :cond_6f
    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocFused:I

    iget-object v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mModelInfoArray:[I

    iget-object v11, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocElementArrayPOC1:[F

    invoke-static {v0, v9, p1, v10, v11}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->nativeMergeVectorPOC1(III[I[F)I

    move-result v2

    if-nez v2, :cond_169

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdniePOCGray:Z

    if-eqz v9, :cond_149

    iget-boolean v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v9, :cond_149

    add-int/lit8 p1, p1, 0x1

    iget v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    iget v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v9, v9, p1

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v6, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v9, v9, p1

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v4, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPOCAdjustWhiteRGB:[[I

    aget-object v9, v9, p1

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    iget v10, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    add-int v5, v9, v10

    if-ltz v5, :cond_c7

    const/16 v9, 0xc

    if-ge v5, v9, :cond_c7

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v9, v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v6, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v9, v9, v5

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v4, v9

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[I

    aget-object v9, v9, v5

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    :cond_c7
    if-gtz v6, :cond_130

    const/16 v9, -0x28

    if-lt v6, v9, :cond_130

    if-gtz v4, :cond_130

    const/16 v9, -0x28

    if-lt v4, v9, :cond_130

    if-gtz v3, :cond_130

    const/16 v9, -0x28

    if-lt v3, v9, :cond_130

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPocScrIndex:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v9, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sec_display_poc_application_complete"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v9, "/efs/FactoryApp/poc_done"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "setPocSetting - POC - Success- RGB - Complete"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    return v9

    :cond_130
    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sec_display_poc_application_complete"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "ssetPocSetting - POC - Success- RGB - Fail - Out of Value"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_149
    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sec_display_poc_application_complete"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v9, "/efs/FactoryApp/poc_done"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "setPocSetting  - mMdniePOCGray - Complete"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    return v9

    :cond_169
    iget-object v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sec_display_poc_application_complete"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v9, "SemMdnieManagerService"

    const-string/jumbo v10, "setPocSetting  - mMdniePOCGray - Fail"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9
.end method

.method public setScreenMode(I)Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_2c

    :cond_10
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1d
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2e

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_2b
    monitor-exit v3

    :cond_2c
    const/4 v2, 0x0

    return v2

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeAccessibilityMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeAccessibilityMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_57

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4c

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p2, :cond_4a

    :goto_45
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_4a
    move p1, v0

    goto :goto_45

    :cond_4c
    const-string/jumbo v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    if-eqz p2, :cond_52

    const/4 v0, 0x1

    :cond_52
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_57
    return v0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeColorBlind"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeColorBlind ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_3c

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_37

    const/4 v0, 0x6

    :cond_37
    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_3c
    return v0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_37

    const/4 v1, 0x4

    :goto_32
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_37
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public setmDNIeNegative(Z)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeNegative"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeNegative ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_3c

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_37

    const/4 v0, 0x1

    :cond_37
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_3c
    return v0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_39

    const/4 v1, 0x3

    :goto_34
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_39
    const/4 v1, 0x0

    goto :goto_34
.end method
