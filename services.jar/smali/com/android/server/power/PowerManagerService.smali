.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$1;,
        Lcom/android/server/power/PowerManagerService$2;,
        Lcom/android/server/power/PowerManagerService$3;,
        Lcom/android/server/power/PowerManagerService$4;,
        Lcom/android/server/power/PowerManagerService$5;,
        Lcom/android/server/power/PowerManagerService$6;,
        Lcom/android/server/power/PowerManagerService$7;,
        Lcom/android/server/power/PowerManagerService$8;,
        Lcom/android/server/power/PowerManagerService$AlpmLock;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$DozeLock;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;,
        Lcom/android/server/power/PowerManagerService$HaltMode;,
        Lcom/android/server/power/PowerManagerService$InputDeviceLightState;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$ScaleFactorLock;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$ShutdownReceiver;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$UserActivityTask;,
        Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$WallpaperReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field private static final ACTION_DISPLAY_ON_TIME:Ljava/lang/String; = "com.sec.android.app.server.power.DISPLAY_ON_TIME"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field private static final ACTION_PMS_LOGGING:Ljava/lang/String; = "com.sec.android.app.server.power.LOGGING"

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/sec_key/hall_detect"

.field private static final CRITICAL_LOW_BATTERY_LEVEL:I = 0x5

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_KEYBOARD_OFF_TIMEOUT:I = 0xbb8

.field private static final DEFAULT_KEY_NIGHT_MODE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ALPM_MODE:I = 0x80000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_BUTTON_EVENT:I = 0x10000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_FOLDER:I = 0x40000

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x20000

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_QUIESCENT:I = 0x1000

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_TOUCHKEY_EVENT:I = 0x4000

.field private static final DIRTY_TOUCHSCREEN_EVENT:I = 0x8000

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DISPLAY_ON_TIME_SEND_EVERYMONTH:I = 0x278d00

.field private static final DISPLAY_POWERMANAGERSERVICE_SETTING_INFO:Ljava/lang/String; = "DPSI"

.field private static final DPUI_LUBS_HW_PARAMETER_BIGDATA_DELAY:I = 0x1388

.field private static final EXTRA_DISPLAY_ON_TIME:Ljava/lang/String; = "display_on_time"

.field private static final FAMILY_CONNECTED_PKG:Ljava/lang/String; = "com.samsung.android.familyshare.dashboard"

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field private static final FORCE_BLANK:I = 0x0

.field private static final FORCE_DISPLAY_NONE:I = -0x1

.field private static final FORCE_UNBLANK:I = 0x1

.field private static final HALT_MODE_REBOOT:I = 0x1

.field private static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field private static final HALT_MODE_SHUTDOWN:I = 0x0

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final LAST_PERCENT_BATTERY_LEVEL:I = 0x1

.field private static final LAST_REBOOT_LOCATION:Ljava/lang/String; = "/data/misc/reboot/last_reboot_reason"

.field private static final LCBS_KEYS:[Ljava/lang/String;

.field private static final LCD_ON_DURATION_UPDATE_EVERYDAY:I = 0x5265c00

.field private static final LD_KEYS:[Ljava/lang/String;

.field private static final LUBS_KEYS:[Ljava/lang/String;

.field static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field private static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field private static final MSG_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x5

.field private static final MSG_PRE_SMART_STAY:I = 0x2

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_SEND_DPUI_LD_HW_PARAMETER_BIGDATA:I = 0x7

.field private static final MSG_SEND_DPUI_LUBS_HW_PARAMETER_BIGDATA:I = 0x6

.field private static final MSG_SMART_STAY:I = 0x1

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final NOTIFICATION_SCREEN_OFF_TIME_DEFAULT:J = -0x1L

.field private static final NOTIFICATION_SCREEN_OFF_TIME_LONG:J = 0x2710L

.field private static final NOTIFICATION_SCREEN_OFF_TIME_SHORT:J = 0x1388L

.field private static final OUTDOOR_MODE_SETTING:Ljava/lang/String; = "display_outdoor_mode"

.field private static final OUTDOOR_MODE_TIMEOUT:I = 0xdbba0

.field private static final PATH_AFC_DISPLAY_ON_TIME:Ljava/lang/String; = "/efs/afc/display_on_time"

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field private static final REASON_REBOOT_BY_USER:Ljava/lang/String; = "reboot,userrequested"

.field private static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field private static final REASON_SHUTDOWN_BY_USER:Ljava/lang/String; = "shutdown,userrequested"

.field private static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "thermal-shutdown"

.field private static final REASON_USERREQUESTED:Ljava/lang/String; = "userrequested"

.field private static final RECOVERY_CAUSE_FILE:Ljava/lang/String; = "/sys/class/sec/sec_debug/recovery_cause"

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field private static final SEC_USE_FACTORY_BINARY:Z

.field private static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field private static final SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field private static final TAG_BRIGHTNESS:Ljava/lang/String; = "[BRIGHTNESS] "

.field private static final TAG_ETC:Ljava/lang/String; = ""

.field private static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_LOG_TO_KERNEL:Ljava/lang/String; = "!@"

.field private static final TAG_POWER_SAVE_MODE:Ljava/lang/String; = "[PSM] "

.field public static final TAG_POWER_STATE:Ljava/lang/String; = "[ps] "

.field public static final TAG_POWER_STATE_V:Ljava/lang/String; = "[s] "

.field private static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field private static final TAG_SMART_STAY:Ljava/lang/String; = "[smart stay] "

.field private static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final ifNotifierInSeperateThread:Z = true

.field private static sQuiescent:Z


# instance fields
.field private final COUNT_FOR_LOGGING_FREQUENT_EVENT:I

.field private final COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

.field private final USE_DEVICE_LOCK_TIME:Z

.field private final USE_PRE_SMART_STAY:Z

.field private final USE_SMART_STAY:Z

.field private mAbuseWakeLockDisabled:Z

.field private final mAbuseWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllBrightWakeLockAbuse:Z

.field private mAlpmHlpmMode:I

.field private mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

.field private mAlwaysOnEnabled:Z

.field private final mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoBrightnessLowerLimit:I

.field private mAutoBrightnessScaleFactorFromSettings:I

.field private mAutoBrightnessUpperLimit:I

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelCriticalLow:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBootCompleted:Z

.field private mBootCompletedRunnables:[Ljava/lang/Runnable;

.field private mBrightnessSettingChangedForGameAutobrightness:Z

.field private mClearViewBrightnessModeCount:I

.field private mClearViewBrightnessModeEnabled:Z

.field private mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field private mColorFadeExit:Z

.field private mColorWeaknessModeCount:I

.field private mColorWeaknessModeEnabled:Z

.field final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field private final mContext:Landroid/content/Context;

.field private mCoverIsUpdatedFromCoverManager:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private mCoverType:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDPSIDuration:[J

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDelayTimePrintWakeLock:J

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayOnTime:I

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private final mDozingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field private mEmergencyModeEnabled:Z

.field private mFTAMode:Z

.field private mFaceDetected:Z

.field private mFaceDetectedFailIntent:Landroid/content/Intent;

.field private mFeatureCoverSysfs:Z

.field private mFeatureNotifyScreenOffTimeout:Z

.field private final mForceBlankDisplayRunnable:Ljava/lang/Runnable;

.field private mForceDoze:Z

.field private final mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

.field private mForcedDisplayOff:Z

.field private mGameAutobrightnessLocked:Z

.field private mGameAutobrightnessLockedStarted:Z

.field private mGoToSleepPreventionEnabled:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

.field private mHandlerSmartStay:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingDozingSuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInputDeviceEnabled:Z

.field private mIsAlpmMode:Z

.field private final mIsBadCurrentConsumptionDevice:Z

.field public mIsCoverClosed:Z

.field mIsDeviceMoving:Z

.field private mIsDualScreenFolder:Z

.field private mIsFolderType:Z

.field private mIsInfinityWallpaper:Z

.field private mIsKeyboardVisible:Z

.field public mIsLidClosed:Z

.field private mIsPowered:Z

.field public mIsSipVisible:Z

.field private mIsSupportedLightSensor:Z

.field private mIsVrModeEnabled:Z

.field mIsWirelessChargerSContextEnabled:Z

.field mIsWirelessChargerSContextRegistered:Z

.field private mKeyLedOffNightModeSetting:I

.field private mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mKeyboardOffTimeoutSetting:I

.field private mLCDFlashMode:Z

.field private mLastAndroidAutoBoostTime:J

.field private mLastAutoBrightnessLimitTime:J

.field private mLastBatteryLevelCriticalLowTime:J

.field private mLastBrightnessOverrideState:Z

.field private mLastGoToSleepReason:I

.field private mLastInteractivePowerHintTime:J

.field private mLastOutdoorModeEnblaedTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastScreenBrightnessSettingChangedTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenTimeout:I

.field private mLastSleepTime:J

.field private mLastUserActivitySummary:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWakeUpReason:I

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightDeviceIdleMode:Z

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryTriggerLevel:I

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNativeUserActivityCount:I

.field private mNeedCheckAbuseWakelocks:Z

.field private mNeedDozingSuspendBlocker:Z

.field private mNextTimeoutForPreSmartStay:J

.field private mNextTimeoutForSmartStay:J

.field private mNoUserActivityIntent:Landroid/content/Intent;

.field private mNoUserActivityIntentLegacy:Landroid/content/Intent;

.field private mNoUserActivitySent:Z

.field private mNotificationLightScreenOverride:J

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mNotifyLongDispatched:J

.field private mNotifyLongNextCheck:J

.field private mNotifyLongScheduled:J

.field private mOutdoorModeSetting:Z

.field private mOverriddenTimeout:J

.field private mPassedWakeupTime:J

.field private mPendingForceUnblankDisplayState:I

.field private mPendingMessagePreSmartStay:Z

.field private mPendingMessageSmartStay:Z

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mPreSmartStayDelay:I

.field private mPrevReleasedWakeLock:Ljava/lang/String;

.field private mPrevTouchKeyForceDisable:Z

.field private final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mResetPersonalAutoBrightnessData:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessForGameAutobrightness:I

.field private mScreenBrightnessForVrSetting:I

.field private mScreenBrightnessForVrSettingDefault:I

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessScaleFactor:F

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenDimDurationOverrideFromWindowManager:J

.field private mScreenExtendedBrightnessMaximum:I

.field private mScreenOffReason:Ljava/lang/String;

.field private mScreenOffTimeoutIntent:Landroid/content/Intent;

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnOffCount:I

.field private mScreenOnReason:Ljava/lang/String;

.field private mSecuredLockEnableSetting:I

.field private mSecuredLockTimeoutSetting:I

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mSentAllDisplayOnTimeIntent:Z

.field private mSentDisplayOnTimeIntent:[I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mShutdownOrRebootCaller:Ljava/lang/String;

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSleepTimeoutSetting:I

.field private mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field private final mSmartStayDelay:I

.field private mSmartStayEnabledSetting:Z

.field private mSmartStayProgress:Z

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryMarkerScreenBrightnessSettingOverride:I

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTemporaryScreenBrightnessSettingOverrideExtended:I

.field private mTheaterModeEnabled:Z

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTouchKeyForceDisable:Z

.field private mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

.field private mTouchKeyOffTimeoutOverrideFromWindowManager:J

.field private mTouchKeyOffTimeoutSetting:I

.field private mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private mUidsChanged:Z

.field private mUidsChanging:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUpdateAutoBrightnessImmediately:Z

.field private mUserActivityIntent:Landroid/content/Intent;

.field private mUserActivityIntentLegacy:Landroid/content/Intent;

.field private mUserActivitySummary:I

.field private final mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserActivityTimeoutSetting:I

.field private final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

.field private mUserInactiveOverrideFromWindowManager:Z

.field private mUserSwitched:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpEvenThoughProximityPositive:Z

.field private mWakeUpPreventionDisabled:Z

.field private mWakeUpPreventionForNotificationSetting:Z

.field private mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private final mWhenCheckSmartStay:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

.field mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mlastSetCoverTypeTime:J

.field private mlastUpdateCoverStateReason:Ljava/lang/String;

.field private mlastUpdateCoverStateTime:J

.field private mlastUpdateCoverTypeReason:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/power/PowerManagerService;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    return-wide v0
.end method

.method static synthetic -get36(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic -get37(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntentLegacy:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    return-wide v0
.end method

.method static synthetic -get46(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/BatterySaverPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/power/PowerManagerService;)F
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    return v0
.end method

.method static synthetic -get57(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic -get58(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntentLegacy:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/power/PowerManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DozeLock;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsInfinityWallpaper:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    return-wide p1
.end method

.method static synthetic -set19(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic -set21(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    return-wide p1
.end method

.method static synthetic -set24(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mResetPersonalAutoBrightnessData:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    return-object p1
.end method

.method static synthetic -set28(Lcom/android/server/power/PowerManagerService;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return p1
.end method

.method static synthetic -set29(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    return p1
.end method

.method static synthetic -set30(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set31(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set33(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mUpdateAutoBrightnessImmediately:Z

    return p1
.end method

.method static synthetic -set35(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    return-wide p1
.end method

.method static synthetic -set37(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set38(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    return-wide p1
.end method

.method static synthetic -set39(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInfinityWallpaper()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/power/PowerManagerService;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->addDisplayOnTime(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleInputDeviceLightOnByScreenOn()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initAlpm()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initDoze()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic -wrap34(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap35(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isProximityPositiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendCurrentBrightnessStatus()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendDPSIDuration()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/power/PowerManagerService;IIILandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->setAlpmModeInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setButtonTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDisableWakeUpPreventionInternal(Z)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeModeBySysfs(I)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromAodLocked(II)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setForcedDisplayOffInternal(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setGoToSleepPreventionInternal(Z)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setLCDFlashModeInternal(ZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setNotiLightScreenTimeoutOverride(J)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setProximityDebounceTimeLockedInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap60(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideExtendedInternal(I)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic -wrap62(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic -wrap63(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method static synthetic -wrap64(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    return-void
.end method

.method static synthetic -wrap65(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap66(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap67(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic -wrap68(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap69(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap70(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap71(Lcom/android/server/power/PowerManagerService;JII)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->wakeUpWithReasonInternal(JII)V

    return-void
.end method

.method static synthetic -wrap72(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->writeDisplayOnTimetoEfs()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "LUBS_B"

    aput-object v1, v0, v2

    const-string/jumbo v1, "LUBS_L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "LUBS_M"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "LBLD"

    aput-object v1, v0, v2

    const-string/jumbo v1, "LBMD"

    aput-object v1, v0, v3

    const-string/jumbo v1, "LBHD"

    aput-object v1, v0, v4

    const-string/jumbo v1, "LOD"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "MODE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "LEVEL"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LCBS_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTask;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    invoke-static {v6}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsDualScreenFolder:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsInfinityWallpaper:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSentDisplayOnTimeIntent:[I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.server.PowerManagerService.action.SCREEN_OFF_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutIntent:Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->USE_SMART_STAY:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    const-string/jumbo v0, "2750"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPreSmartStayDelay:I

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsBadCurrentConsumptionDevice:Z

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWhenCheckSmartStay:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_FOR_LOGGING_FREQUENT_EVENT:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "[api] PowerManagerService()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_NOT_SUPPORTED_HW_REV:Z

    if-eqz v0, :cond_1d8

    const-string/jumbo v0, "not_supported_hw_rev"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    :cond_1d8
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v0, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    new-instance v0, Lcom/android/server/power/BatterySaverPolicy;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v1}, Lcom/android/server/power/BatterySaverPolicy;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_21c
    const-string/jumbo v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string/jumbo v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    const-string/jumbo v0, "PowerManagerService.Dozing"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDozingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v2, "[s] PowerManagerService() : WAKEFULNESS_AWAKE"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.boot.quiescent"

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V
    :try_end_274
    .catchall {:try_start_21c .. :try_end_274} :catchall_276

    monitor-exit v1

    return-void

    :catchall_276
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/BatterySaverPolicy;)V
    .registers 12

    const/4 v8, 0x1

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTask;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    invoke-static {v8}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsDualScreenFolder:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsInfinityWallpaper:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSentDisplayOnTimeIntent:[I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.server.PowerManagerService.action.SCREEN_OFF_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutIntent:Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->USE_SMART_STAY:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    const-string/jumbo v0, "2750"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPreSmartStayDelay:I

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsBadCurrentConsumptionDevice:Z

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mWhenCheckSmartStay:I

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_FOR_LOGGING_FREQUENT_EVENT:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v0, Lcom/android/server/power/PowerManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDozingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-void
.end method

.method private acquireAbuseWakelockLocked()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "acquireAbuseWakelockLocked;"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_31

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_32

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :sswitch_27
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_24

    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-direct {p0, v3, v5, v5}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;ZZ)V

    goto :goto_24

    :cond_31
    return-void

    :sswitch_data_32
    .sparse-switch
        0x6 -> :sswitch_27
        0xa -> :sswitch_27
        0x1a -> :sswitch_27
    .end sparse-switch
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v14

    if-ltz v14, :cond_ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_55

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "acquireWakeLockInternal : Update existing wake lock"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object v4, v2

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    :cond_55
    const/16 v16, 0x0

    :goto_57
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_192

    :goto_60
    :sswitch_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-nez v3, :cond_72

    const-class v3, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    :cond_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-eqz v3, :cond_83

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V

    :cond_83
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v15}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v3

    if-nez v3, :cond_be

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_be

    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_be

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v3, :cond_18d

    const-wide/16 v4, 0x1388

    :goto_b9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->setNotiLightScreenTimeoutOverride(J)V

    :cond_be
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v16, :cond_c8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_c8
    .catchall {:try_start_7 .. :try_end_c8} :catchall_129

    :cond_c8
    monitor-exit v17

    return-void

    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v12, :cond_ec

    new-instance v12, Lcom/android/server/power/PowerManagerService$UidState;

    move/from16 v0, p7

    invoke-direct {v12, v0}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v3, 0x12

    iput v3, v12, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move/from16 v0, p7

    invoke-virtual {v3, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ec
    iget v3, v12, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    new-instance v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    :try_end_109
    .catchall {:try_start_ca .. :try_end_109} :catchall_129

    const/4 v3, 0x0

    :try_start_10a
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10f} :catch_11f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_129

    :try_start_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    const/16 v16, 0x1

    goto/16 :goto_57

    :catch_11f
    move-exception v13

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_129
    .catchall {:try_start_10f .. :try_end_129} :catchall_129

    :catchall_129
    move-exception v3

    monitor-exit v17

    throw v3

    :sswitch_12c
    :try_start_12c
    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[api] acquire WakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ws="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catchall {:try_start_12c .. :try_end_18b} :catchall_129

    goto/16 :goto_60

    :cond_18d
    const-wide/16 v4, 0x2710

    goto/16 :goto_b9

    nop

    :sswitch_data_192
    .sparse-switch
        0x1 -> :sswitch_60
        0x6 -> :sswitch_12c
        0xa -> :sswitch_12c
        0x1a -> :sswitch_12c
        0x20 -> :sswitch_12c
        0x40 -> :sswitch_12c
        0x80 -> :sswitch_12c
    .end sparse-switch
.end method

.method private addDisplayOnTime(I)V
    .registers 3

    const v0, 0x15180

    if-gt p1, v0, :cond_f

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->checkDisplayOnTimeForIntnet(I)V

    :cond_f
    return-void
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 12

    const/4 v3, 0x0

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e6

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_5c

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    :goto_26
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionDisabled:Z

    if-nez v1, :cond_bf

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    const/16 v1, 0x2710

    if-lt v5, v1, :cond_87

    :try_start_32
    invoke-interface {v8, v6, v5}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_87

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen__On : Cancel (notifications are disabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_5b} :catch_6c

    return-void

    :cond_5c
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_69

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    goto :goto_26

    :cond_69
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_26

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to call NotificationManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen__On : Cancel (wearable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededForEdgeLightingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "applyWakeLockFlagsOnAcquireLocked return by isWakeUpPreventionNeededForEdgeLighting"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_bf
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " wl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    :cond_e6
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9

    const/4 v4, 0x0

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_33
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .registers 13

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_55

    if-nez v0, :cond_d

    :cond_b
    monitor-exit v7

    return-void

    :cond_d
    :try_start_d
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Brightness boost activated (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    :cond_42
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_55

    monitor-exit v7

    return-void

    :catchall_55
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static callerInfoWithProcessName()Ljava/lang/String;
    .registers 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v9, "/proc/%d/cmdline"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_27} :catch_65
    .catchall {:try_start_c .. :try_end_27} :catchall_80

    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    const-string/jumbo v8, "\u0000"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-lez v8, :cond_3a

    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3a} :catch_95
    .catchall {:try_start_27 .. :try_end_3a} :catchall_92

    :cond_3a
    if-eqz v2, :cond_3f

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5a

    :cond_3f
    :goto_3f
    move-object v1, v2

    :cond_40
    :goto_40
    const-string/jumbo v8, " (uid: %d pid: %d processName: %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :catch_5a
    move-exception v0

    const-string/jumbo v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :catch_65
    move-exception v0

    :goto_66
    :try_start_66
    const-string/jumbo v8, "PowerManagerService"

    const-string/jumbo v9, "error on read process name"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_80

    if-eqz v1, :cond_40

    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_40

    :catch_75
    move-exception v0

    const-string/jumbo v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catchall_80
    move-exception v8

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    :cond_86
    :goto_86
    throw v8

    :catch_87
    move-exception v0

    const-string/jumbo v9, "PowerManagerService"

    const-string/jumbo v10, "error on in.close"

    invoke-static {v9, v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_86

    :catchall_92
    move-exception v8

    move-object v1, v2

    goto :goto_81

    :catch_95
    move-exception v0

    move-object v1, v2

    goto :goto_66
.end method

.method private canDozeLocked()Z
    .registers 3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private canDreamLocked()Z
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v4, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_2b

    :cond_2a
    return v3

    :cond_2b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->verifiedCoverClosedLocked()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4d

    return v3

    :cond_4d
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_8a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_5e

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5e

    return v3

    :cond_5e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_6d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_6d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ge v1, v2, :cond_6d

    return v3

    :cond_6d
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_7c

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_7c

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ge v1, v2, :cond_7c

    return v3

    :cond_7c
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_8a

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    if-eq v1, v4, :cond_8a

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8a

    return v3

    :cond_8a
    const/4 v1, 0x1

    return v1
.end method

.method private checkDisplayOnTimeForIntnet(I)V
    .registers 6

    const/4 v3, 0x1

    const v1, 0x278d00

    div-int v0, p1, v1

    packed-switch v0, :pswitch_data_1c

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSentDisplayOnTimeIntent:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-eq v1, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->sendDisplayonTimeIntent(I)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSentDisplayOnTimeIntent:[I

    add-int/lit8 v2, v0, -0x1

    aput v3, v1, v2

    goto :goto_9

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_8
    return-object v0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 5

    new-instance v1, Lcom/android/server/power/PowerManagerService$15;

    const-string/jumbo v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$15;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 4

    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private disableAbusiveWakeLockInternal(Landroid/os/IBinder;ZZ)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_29

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v2, p2, :cond_29

    iput-boolean p2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_2b

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_1e
    if-eqz p3, :cond_29

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2f

    :cond_29
    monitor-exit v3

    return-void

    :cond_2b
    :try_start_2b
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_1e

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 24

    const-string/jumbo v16, "POWER MANAGER (dumpsys power)\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_11
    const-string/jumbo v16, "Power Manager State:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDirty=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakefulness="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakefulnessChanging="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsPowered="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mPlugType="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mBatteryLevel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mBatteryLevelCriticalLow="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCriticalLow:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastBatteryLevelCriticalLowTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastBatteryLevelCriticalLowTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mBatteryLevelWhenDreamStarted="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDockState="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mStayOn="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mProximityPositive="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mBootCompleted="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSystemReady="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mHalAutoSuspendModeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mHalInteractiveModeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakeLockSummary=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "  mNotifyLongScheduled="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-nez v16, :cond_1518

    const-string/jumbo v16, "(none)"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_30d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "  mNotifyLongDispatched="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-nez v16, :cond_1530

    const-string/jumbo v16, "(none)"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_330
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "  mNotifyLongNextCheck="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-nez v16, :cond_1545

    const-string/jumbo v16, "(none)"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_353
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mUserActivitySummary=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mRequestWaitForNegativeProximity="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSandmanScheduled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSandmanSummoned="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLowPowerModeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mUltraPowerSavingModeEnabled: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mEmergencyModeEnabled: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mAutoBrightnessScaleFactorFromSettings: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mBatteryLevelLow="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLightDeviceIdleMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDeviceIdleMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDeviceIdleWhitelist="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDeviceIdleTempWhitelist="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastWakeTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastSleepTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastUserActivityTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastUserActivityTimeNoChangeLights="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastInteractivePowerHintTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastScreenBrightnessBoostTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessBoostInProgress="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDisplayReady="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mHoldingWakeLockSuspendBlocker="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mHoldingDisplaySuspendBlocker="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "Settings and Configuration:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTheaterModeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSuspendWhenScreenOffDueToProximityConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsSupportedConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsEnabledByDefaultConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsActivatedOnSleepByDefaultConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsActivatedOnDockByDefaultConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsEnabledOnBatteryConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsBatteryLevelDrainCutoffConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsEnabledSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsActivateOnSleepSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDreamsActivateOnDockSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDozeAfterScreenOffConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLowPowerModeSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mAutoLowPowerModeConfigured="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mAutoLowPowerModeSnoozing="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLowBatteryTriggerLevel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mMinimumScreenOffTimeoutConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mMaximumScreenDimDurationConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mMaximumScreenDimRatioConfig="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSleepTimeoutSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " (enforced="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, ")"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mStayOnWhilePluggedInSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenAutoBrightnessAdjustmentSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessModeSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessOverrideFromWindowManager="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mUserActivityTimeoutOverrideFromWindowManager="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mUserInactiveOverrideFromWindowManager="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTemporaryScreenBrightnessSettingOverride="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTemporaryScreenBrightnessSettingOverrideExtended="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDozeScreenStateOverrideFromDreamManager="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDozeScreenBrightnessOverrideFromDreamManager="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessSettingMinimum="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessSettingMaximum="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessSettingDefault="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessForVrSettingDefault="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSettingDefault:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mScreenBrightnessForVrSetting="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mDoubleTapWakeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsVrModeEnabled="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastUserActivitySummary: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastWakeUpReason: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakeUpPreventionForNotificationSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mWakeUpPreventionPackagesForNotificationSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mOutdoorModeSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsSupportedLightSensor: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTemporaryMarkerScreenBrightnessSettingOverride="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mAutoBrightnessLowerLimit="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mAutoBrightnessUpperLimit="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastAutoBrightnessLimitTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mLastScreenBrightnessSettingChangedTime="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessSettingChangedTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mGameAutobrightnessLocked="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "  SecProductFeature_FRAMEWORK.SEC_PRODUCT_FEATURE_FRAMEWORK_ENABLE_SMART_STAY: true"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY: 2750"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  USE_AUTO_BRIGHTNESS_DETAIL: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " (mSCafeName: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v18, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " mIsMocha: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " upgradeLollipop: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v18

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, ")"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SEC_FEATURE_USE_GED_DOZE: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SEC_FEATURE_SEAMLESS_AOD: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SEC_FEATURE_WA_COLOR_FADE_WHEN_WAKINGUP_FROM_DOZE: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_COLOR_FADE_WHEN_WAKINGUP_FROM_DOZE:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mFeatureNotifyScreenOffTimeout: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SEC_FEATURE_NOT_SUPPORTED_HW_REV: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_NOT_SUPPORTED_HW_REV:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Sleep timeout: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " ms"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Screen off timeout: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " ms"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Screen dim duration: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " ms"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Screen dim duration override: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " ms"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "Smart Stay:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "  USE_SMART_STAY: true"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  USE_PRE_SMART_STAY: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSmartStayEnabledSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  SmartStayDelay: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mNextTimeoutForSmartStay: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mPendingMessageSmartStay: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mPendingMessagePreSmartStay: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mFaceDetected: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "  mIsBadCurrentConsumptionDevice: true"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "UID states (changing="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v16, " changed="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v16, "):"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_1565

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/PowerManagerService$UidState;

    const-string/jumbo v16, "  UID "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v12, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_155a

    const-string/jumbo v16, "  ACTIVE "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_14eb
    const-string/jumbo v16, " count="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v12, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v16, " state="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v12, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1498

    :cond_1518
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    move-wide/from16 v18, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V
    :try_end_152b
    .catchall {:try_start_11 .. :try_end_152b} :catchall_152d

    goto/16 :goto_30d

    :catchall_152d
    move-exception v16

    monitor-exit v17

    throw v16

    :cond_1530
    :try_start_1530
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    move-wide/from16 v18, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_330

    :cond_1545
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    move-wide/from16 v18, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_353

    :cond_155a
    const-string/jumbo v16, "INACTIVE "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14eb

    :cond_1565
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "InputDeviceLightState:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTouchKeyOffTimeoutSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    move/from16 v16, v0

    if-eqz v16, :cond_161e

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsLidClosed: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mKeyboardOffTimeoutSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mKeyLedOffNightModeSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_161e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsSipVisible: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTouchKeyForceDisable: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTouchKeyForceDisableOverrideFromSystemPowerSaveMode: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mInputDeviceEnabled: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsFolderType: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1752

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "ATT EAS Pin lock:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSecuredLockEnableSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mSecuredLockTimeoutSetting: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1752
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "Looper state:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    new-instance v18, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string/jumbo v19, "  "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v16, "Clear Cover:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsCoverClosed: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mlastUpdateCoverStateReason: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mlastUpdateCoverStateTime: = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mFeatureCoverSysfs: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mCoverType: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " at "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mlastUpdateCoverTypeReason: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "ALPM Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mIsAlpmMode: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mPendingForceUnblankDisplayState: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v16, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_COCKTAIL_FW: true"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "FTA mode: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SEC_USE_FACTORY_BINARY: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SEC_FEATURE_MARKER_TRACKER: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MARKER_TRACKER:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SEC_FEATURE_USE_HBM_AT_MANUAL_MAX: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v16, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AFC:Z

    if-eqz v16, :cond_1a05

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mDisplayOnTime: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mSentAllDisplayOnTimeIntent: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a05
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Wake Locks: size="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1a3f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a6d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a3f

    :cond_1a6d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Suspend Blockers: size="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1aa7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1ad5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/SuspendBlocker;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1aa7

    :cond_1ad5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Display Power: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/power/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;
    :try_end_1b12
    .catchall {:try_start_1530 .. :try_end_1b12} :catchall_152d

    monitor-exit v17

    if-eqz v13, :cond_1b1a

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    :cond_1b1a
    const-string/jumbo v16, "\n\n ====================== beginning of PMS  log ======================"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "  Day       Time    Tid Debug     TAG            INFO"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, " ==================================================================="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/power/Slog;->savePMSLog(Ljava/io/PrintWriter;)I

    const-string/jumbo v16, " ======================= end of PMS log ========================"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, " PMSLog Done !!! \n\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 38

    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    move/from16 v29, v0

    const-wide v32, 0x10300000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move/from16 v29, v0

    const-wide v32, 0x11000000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000004L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000005L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    move/from16 v29, v0

    const-wide v32, 0x11000000006L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    move/from16 v29, v0

    const-wide v32, 0x10300000007L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    move/from16 v29, v0

    const-wide v32, 0x10300000008L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    move/from16 v29, v0

    const-wide v32, 0x11000000009L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000aL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000bL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000cL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000dL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000eL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000fL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v32, 0x11100000010L

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_315

    const/16 v29, 0x1

    :goto_12c
    const-wide v32, 0x10d00000001L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_319

    const/16 v29, 0x1

    :goto_144
    const-wide v32, 0x10d00000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_31d

    const/16 v29, 0x1

    :goto_15c
    const-wide v32, 0x10d00000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x8

    if-eqz v29, :cond_321

    const/16 v29, 0x1

    :goto_174
    const-wide v32, 0x10d00000004L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x10

    if-eqz v29, :cond_325

    const/16 v29, 0x1

    :goto_18c
    const-wide v32, 0x10d00000005L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x20

    if-eqz v29, :cond_329

    const/16 v29, 0x1

    :goto_1a4
    const-wide v32, 0x10d00000006L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x40

    if-eqz v29, :cond_32d

    const/16 v29, 0x1

    :goto_1bc
    const-wide v32, 0x10d00000007L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_331

    const/16 v29, 0x1

    :goto_1d8
    const-wide v32, 0x10d00000008L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000011L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000012L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000013L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v32, 0x11100000014L

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_335

    const/16 v29, 0x1

    :goto_234
    const-wide v32, 0x10d00000001L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_339

    const/16 v29, 0x1

    :goto_24c
    const-wide v32, 0x10d00000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_33d

    const/16 v29, 0x1

    :goto_264
    const-wide v32, 0x10d00000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-wide/from16 v0, v24

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000015L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000016L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000017L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000018L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000019L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000001aL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000001bL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    move-object/from16 v31, v0

    const/16 v29, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_300
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_341

    aget v7, v31, v29

    const-wide v34, 0x2030000001cL

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_300

    :cond_315
    const/16 v29, 0x0

    goto/16 :goto_12c

    :cond_319
    const/16 v29, 0x0

    goto/16 :goto_144

    :cond_31d
    const/16 v29, 0x0

    goto/16 :goto_15c

    :cond_321
    const/16 v29, 0x0

    goto/16 :goto_174

    :cond_325
    const/16 v29, 0x0

    goto/16 :goto_18c

    :cond_329
    const/16 v29, 0x0

    goto/16 :goto_1a4

    :cond_32d
    const/16 v29, 0x0

    goto/16 :goto_1bc

    :cond_331
    const/16 v29, 0x0

    goto/16 :goto_1d8

    :cond_335
    const/16 v29, 0x0

    goto/16 :goto_234

    :cond_339
    const/16 v29, 0x0

    goto/16 :goto_24c

    :cond_33d
    const/16 v29, 0x0

    goto/16 :goto_264

    :cond_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    move-object/from16 v31, v0

    const/16 v29, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_34e
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_363

    aget v7, v31, v29

    const-wide v34, 0x2030000001dL

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v29, v29, 0x1

    goto :goto_34e

    :cond_363
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x1040000001eL

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x1040000001fL

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000020L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000021L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000022L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10400000023L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000024L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000025L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000026L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000027L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v32, 0x11100000028L

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000001L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000004L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000005L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000006L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000007L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000008L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000009L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000aL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000bL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    move/from16 v29, v0

    const-wide v32, 0x1070000000cL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    move/from16 v29, v0

    const-wide v32, 0x1070000000dL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    move/from16 v29, v0

    const-wide v32, 0x1070000000eL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000000fL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000010L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000011L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000012L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000013L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000014L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000015L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    move/from16 v29, v0

    const-wide v32, 0x10300000016L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    move/from16 v29, v0

    const-wide v32, 0x10300000017L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    move/from16 v29, v0

    const-wide v32, 0x10200000018L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v29, v0

    const-wide v32, 0x10300000019L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    move/from16 v29, v0

    const-wide v32, 0x1070000001aL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    move/from16 v29, v0

    const-wide v32, 0x1030000001bL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v29

    const-wide v32, 0x10d0000001cL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v32, 0x1110000001dL

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_8a0

    const/16 v29, 0x1

    :goto_62f
    const-wide v32, 0x10d00000001L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_8a4

    const/16 v29, 0x1

    :goto_647
    const-wide v32, 0x10d00000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_8a8

    const/16 v29, 0x1

    :goto_65f
    const-wide v32, 0x10d00000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v29, v0

    const-wide v32, 0x1070000001eL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    move/from16 v29, v0

    const-wide v32, 0x1020000001fL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v29, v0

    const-wide v32, 0x11000000020L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    move/from16 v29, v0

    const-wide v32, 0x10700000021L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    move-wide/from16 v32, v0

    const-wide v34, 0x10800000022L

    move-wide/from16 v0, v34

    move-wide/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000023L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    move/from16 v29, v0

    const-wide v32, 0x10700000024L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    move/from16 v29, v0

    const-wide v32, 0x10200000025L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    move/from16 v29, v0

    const-wide v32, 0x11000000026L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    move/from16 v29, v0

    const-wide v32, 0x10200000027L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v32, 0x11100000028L

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    move/from16 v29, v0

    const-wide v32, 0x10300000001L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    move/from16 v29, v0

    const-wide v32, 0x10300000002L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v29, v0

    const-wide v32, 0x10300000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSettingDefault:I

    move/from16 v29, v0

    const-wide v32, 0x10300000004L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSetting:I

    move/from16 v29, v0

    const-wide v32, 0x10300000029L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000002aL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000002bL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v11

    const-wide v32, 0x10700000029L

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v32, 0x1030000002aL

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v32, 0x1030000002bL

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000002cL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    move/from16 v29, v0

    const-wide v32, 0x10d0000002dL

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v6, 0x0

    :goto_808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v6, v0, :cond_8c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/power/PowerManagerService$UidState;

    const-wide v32, 0x2110000002eL

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    const-wide v32, 0x10300000001L

    move-wide/from16 v0, v32

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v29

    const-wide v32, 0x10e00000002L

    move-wide/from16 v0, v32

    move-object/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    move/from16 v29, v0

    const-wide v32, 0x10d00000003L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    move/from16 v29, v0

    const-wide v32, 0x10300000004L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    move/from16 v29, v0

    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_8ac

    const-wide v32, 0x10d00000005L

    const/16 v29, 0x1

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :goto_897
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_808

    :cond_8a0
    const/16 v29, 0x0

    goto/16 :goto_62f

    :cond_8a4
    const/16 v29, 0x0

    goto/16 :goto_647

    :cond_8a8
    const/16 v29, 0x0

    goto/16 :goto_65f

    :cond_8ac
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    move/from16 v29, v0

    const-wide v32, 0x11000000006L

    move-wide/from16 v0, v32

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_8be
    .catchall {:try_start_e .. :try_end_8be} :catchall_8bf

    goto :goto_897

    :catchall_8bf
    move-exception v29

    monitor-exit v30

    throw v29

    :cond_8c2
    :try_start_8c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v29

    const-wide v32, 0x1110000002fL

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Looper;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_8e2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8fb

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/power/PowerManagerService$WakeLock;

    const-wide v32, 0x21100000030L

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_8e2

    :cond_8fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_905
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_91c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/SuspendBlocker;

    const-wide v32, 0x21100000031L

    move-wide/from16 v0, v32

    invoke-interface {v9, v8, v0, v1}, Lcom/android/server/power/SuspendBlocker;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_905

    :cond_91c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    move-object/from16 v26, v0
    :try_end_922
    .catchall {:try_start_8c2 .. :try_end_922} :catchall_8bf

    monitor-exit v30

    if-eqz v26, :cond_931

    const-wide v30, 0x11100000032L

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_931
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method private enqueueNotifyLongMsgLocked(J)V
    .registers 6

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private faceDetect()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    :cond_d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    move-result v0

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[smart stay] faceDetect : bFaceDetected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v0, v3, :cond_18

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_18

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mNeedDozingSuspendBlocker:Z

    return-void

    :cond_18
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v3, :cond_20

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_23

    :cond_20
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    :cond_23
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v0, v2, :cond_2a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->logScreenOn()V

    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mNeedDozingSuspendBlocker:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    :cond_33
    return-void
.end method

.method private getCurrentBrightnessSettingLocked()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSetting:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto :goto_6
.end method

.method private getDesiredScreenPolicyLocked()I
    .registers 8

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    return v1

    :cond_a
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_12

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_13

    :cond_12
    return v2

    :cond_13
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v4, :cond_23

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1e

    return v3

    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    if-eqz v1, :cond_23

    return v2

    :cond_23
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2f

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    :cond_2f
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    if-eqz v1, :cond_55

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-gt v1, v3, :cond_55

    return v6

    :cond_38
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_2f

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_56

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return v0

    :cond_55
    return v4

    :cond_56
    return v6
.end method

.method private getMaxProximityNegativeDebounce()I
    .registers 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_35

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    if-ge v2, v3, :cond_32

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v2, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_35
    return v2
.end method

.method private getMaxProximityPositiveDebounce()I
    .registers 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_35

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    if-ge v2, v3, :cond_32

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v2, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_35
    return v2
.end method

.method private getScreenDimDurationLocked(I)I
    .registers 6

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_10
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .registers 8

    const-wide/16 v4, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_23

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "[api]  override the screen timeout by mNotificationLightScreenOverride"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J

    long-to-int v1, v2

    :cond_23
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v1, v2

    :cond_2c
    if-ltz p1, :cond_32

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_32
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    if-eqz v2, :cond_55

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    if-lez v2, :cond_55

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    if-le v0, v2, :cond_55

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    if-le v2, v3, :cond_55

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "getScreenOffTimeoutLocked return mSecuredLockTimeoutSetting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    :cond_55
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    if-eq v0, v2, :cond_82

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[s] getScreenOffTimeoutLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    :cond_82
    return v0
.end method

.method private getSleepTimeoutLocked()I
    .registers 3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    if-gtz v0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getWakeUpReasonString(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_5a

    const-string/jumbo v0, "UNKOWN"

    :goto_9
    return-object v0

    :pswitch_a
    const-string/jumbo v0, "WAKE_UP_REASON_UNKNOWN"

    goto :goto_9

    :pswitch_e
    const-string/jumbo v0, "WAKE_UP_REASON_KEY"

    goto :goto_9

    :pswitch_12
    const-string/jumbo v0, "WAKE_UP_REASON_MOTION"

    goto :goto_9

    :pswitch_16
    const-string/jumbo v0, "WAKE_UP_REASON_CAMERA_LENS_COVER"

    goto :goto_9

    :pswitch_1a
    const-string/jumbo v0, "WAKE_UP_REASON_SPEN"

    goto :goto_9

    :pswitch_1e
    const-string/jumbo v0, "WAKE_UP_REASON_LID_SWITCH"

    goto :goto_9

    :pswitch_22
    const-string/jumbo v0, "WAKE_UP_REASON_COVER_OPEN"

    goto :goto_9

    :pswitch_26
    const-string/jumbo v0, "WAKE_UP_REASON_GESTURE"

    goto :goto_9

    :pswitch_2a
    const-string/jumbo v0, "WAKE_UP_REASON_DREAM"

    goto :goto_9

    :pswitch_2e
    const-string/jumbo v0, "WAKE_UP_REASON_DOCK"

    goto :goto_9

    :pswitch_32
    const-string/jumbo v0, "WAKE_UP_REASON_HDMI"

    goto :goto_9

    :pswitch_36
    const-string/jumbo v0, "WAKE_UP_REASON_POWER"

    goto :goto_9

    :pswitch_3a
    const-string/jumbo v0, "WAKE_UP_REASON_EAR_JACK"

    goto :goto_9

    :pswitch_3e
    const-string/jumbo v0, "WAKE_UP_REASON_EAR_JACK"

    goto :goto_9

    :pswitch_42
    const-string/jumbo v0, "WAKE_UP_REASON_WAKE_LOCK"

    goto :goto_9

    :pswitch_46
    const-string/jumbo v0, "WAKE_UP_REASON_SANDMAN"

    goto :goto_9

    :pswitch_4a
    const-string/jumbo v0, "WAKE_UP_REASON_PROXIMITY"

    goto :goto_9

    :pswitch_4e
    const-string/jumbo v0, "WAKE_UP_REASON_APPLICATION"

    goto :goto_9

    :pswitch_52
    const-string/jumbo v0, "WAKE_UP_REASON_FINGER"

    goto :goto_9

    :pswitch_56
    const-string/jumbo v0, "WAKE_UP_REASON_BIXBY"

    goto :goto_9

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
    .end packed-switch
.end method

.method private goToSleepInternal(JIII)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .registers 15

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_a

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v4, :cond_c

    :cond_a
    const/4 v4, 0x0

    return v4

    :cond_c
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "goToSleepNoUpdateLocked: GoToSleep prevention is enabled"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_2c
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "!@[ps] Screen__Off - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    const-string/jumbo v4, "goToSleep"

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    packed-switch p3, :pswitch_data_1d4

    :try_start_83
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_a5
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v4, 0x3

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastGoToSleepReason:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_b8
    if-ge v0, v1, :cond_1bf

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_1e8

    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    :pswitch_ce
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Going to sleep due to proximity..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_83 .. :try_end_d7} :catchall_d8

    goto :goto_a5

    :catchall_d8
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :pswitch_e0
    :try_start_e0
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Going to sleep due to keep screen off..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :pswitch_ea
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :pswitch_10c
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    :pswitch_12f
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    :pswitch_152
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    :pswitch_175
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    :pswitch_198
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    :sswitch_1bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_cb

    :cond_1bf
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1cb

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1cb
    .catchall {:try_start_e0 .. :try_end_1cb} :catchall_d8

    :cond_1cb
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x1

    return v4

    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_10c
        :pswitch_12f
        :pswitch_152
        :pswitch_198
        :pswitch_175
        :pswitch_ce
        :pswitch_e0
    .end packed-switch

    :sswitch_data_1e8
    .sparse-switch
        0x6 -> :sswitch_1bb
        0xa -> :sswitch_1bb
        0x1a -> :sswitch_1bb
    .end sparse-switch
.end method

.method private handleAbuseWakelockWhenUseractivityChanged()V
    .registers 16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_8
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_14

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_80

    if-eqz v12, :cond_16

    :cond_14
    monitor-exit v13

    return-void

    :cond_16
    :try_start_16
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v7, :cond_33

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_80

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_33
    monitor-exit v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v7, :cond_d4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v3

    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    :try_start_64
    iget-object v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_6f} :catch_85

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_83

    const/4 v5, 0x0

    :goto_74
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    sparse-switch v12, :sswitch_data_d6

    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :catchall_80
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_83
    const/4 v5, 0x1

    goto :goto_74

    :catch_85
    move-exception v1

    const-string/jumbo v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Process abuse wakelock; Failed to find "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :sswitch_a3
    if-eqz v4, :cond_ba

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_ba

    const/16 v12, 0x7d

    if-le v3, v12, :cond_ba

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_b0
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_b7

    :goto_b5
    monitor-exit v13

    goto :goto_7d

    :catchall_b7
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_ba
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    goto :goto_7d

    :sswitch_be
    if-eqz v4, :cond_7d

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_7d

    const/16 v12, 0x7d

    if-le v3, v12, :cond_7d

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_cb
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_d1

    goto :goto_b5

    :catchall_d1
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_d4
    return-void

    nop

    :sswitch_data_d6
    .sparse-switch
        0x6 -> :sswitch_be
        0xa -> :sswitch_a3
        0x1a -> :sswitch_a3
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private handleInputDeviceLightOnByScreenOn()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleSandman()V
    .registers 14

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v1, :cond_10d

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_10d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-nez v1, :cond_fe

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v9

    :goto_1f
    const-string/jumbo v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSandman : startDreaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  (canDreamLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  canDozeLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    if-eqz v1, :cond_10a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-nez v1, :cond_101

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v1

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I
    :try_end_7b
    .catchall {:try_start_9 .. :try_end_7b} :catchall_110

    if-ne v1, v7, :cond_104

    const/4 v8, 0x1

    :goto_7e
    monitor-exit v3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_117

    if-eqz v9, :cond_b5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    const-string/jumbo v3, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSandman : startDream("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v10, v6, :cond_113

    move v1, v2

    :goto_9c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v10, v6, :cond_115

    :goto_b2
    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    :cond_b5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    :goto_bb
    if-eqz v8, :cond_cf

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : SCREEN_OFF_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_cf
    if-eqz v9, :cond_de

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_de

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    if-eqz v9, :cond_f4

    if-eqz v0, :cond_f4

    :try_start_e5
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    if-ne v10, v6, :cond_119

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "Dozing..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    :goto_f4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_fc

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_123

    if-eq v1, v10, :cond_126

    :cond_fc
    monitor-exit v12

    return-void

    :cond_fe
    const/4 v9, 0x1

    goto/16 :goto_1f

    :cond_101
    const/4 v8, 0x1

    goto/16 :goto_7e

    :cond_104
    const/4 v8, 0x0

    goto/16 :goto_7e

    :cond_107
    const/4 v8, 0x0

    goto/16 :goto_7e

    :cond_10a
    const/4 v8, 0x0

    goto/16 :goto_7e

    :cond_10d
    const/4 v9, 0x0

    goto/16 :goto_7e

    :catchall_110
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_113
    move v1, v11

    goto :goto_9c

    :cond_115
    move v2, v11

    goto :goto_b2

    :cond_117
    const/4 v0, 0x0

    goto :goto_bb

    :cond_119
    :try_start_119
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "Dreaming..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_119 .. :try_end_122} :catchall_123

    goto :goto_f4

    :catchall_123
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_126
    :try_start_126
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_fc

    if-ne v10, v7, :cond_1d2

    if-eqz v0, :cond_182

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_182

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_1ae

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1ae

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1ae

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_182
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_1b0

    const-string/jumbo v1, " dream(timeout)"

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_19c
    .catchall {:try_start_126 .. :try_end_19c} :catchall_123

    :cond_19c
    :goto_19c
    monitor-exit v12

    if-eqz v0, :cond_1ad

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : stopDream"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    :cond_1ad
    return-void

    :cond_1ae
    monitor-exit v12

    return-void

    :cond_1b0
    :try_start_1b0
    const-string/jumbo v1, " dream end"

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "android.server.power:DREAM"

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x3e8

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1d1
    .catchall {:try_start_1b0 .. :try_end_1d1} :catchall_123

    goto :goto_19c

    :cond_1d2
    if-ne v10, v6, :cond_19c

    if-eqz v0, :cond_1d8

    monitor-exit v12

    return-void

    :cond_1d8
    :try_start_1d8
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z
    :try_end_1da
    .catchall {:try_start_1d8 .. :try_end_1da} :catchall_123

    if-eqz v1, :cond_1de

    monitor-exit v12

    return-void

    :cond_1de
    :try_start_1de
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1ea
    .catchall {:try_start_1de .. :try_end_1ea} :catchall_123

    goto :goto_19c
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v1, 0x0

    const-string/jumbo v2, "Display"

    move-object v11, p1

    const-string/jumbo v4, "sm"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    move-object v10, p2

    const-string/jumbo v9, ""

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_20
    return-void

    :cond_21
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v3, "sendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private handleSmartStay(Z)V
    .registers 13

    const/4 v10, 0x0

    const-string/jumbo v8, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[smart stay] handleSmartStay"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_30

    const-string/jumbo v1, "(preTest)"

    :goto_15
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_34

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v8, "[smart stay] handleSmartStay: mBootCompleted is false. return"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    const-string/jumbo v1, ""

    goto :goto_15

    :cond_34
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v8, "[smart stay] handleSmartStay : skip smart stay because of screen bright wake lock"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_5c

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v8, "[smart stay] handleSmartStay : skip smart stay because folder is closed"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->faceDetect()Z

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v6

    if-eqz p1, :cond_af

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_8d

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_8d

    if-nez v0, :cond_8c

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v8, "[smart stay] handleSmartStay(preTest) : sendBroadcast done."

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    const-string/jumbo v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[smart stay] handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_af
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_d4

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    const-string/jumbo v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[smart stay] handleSmartStay : mFaceDetected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_d4
    const-string/jumbo v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[smart stay] handleSmartStay : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method private handleUidStateChangeLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    goto :goto_7
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    move-result v0

    if-gez v0, :cond_27

    monitor-exit v2

    return-void

    :cond_27
    :try_start_27
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private incrementBootCount()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "boot_count"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_11} :catch_24
    .catchall {:try_start_3 .. :try_end_11} :catchall_27

    move-result v0

    :goto_12
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "boot_count"

    add-int/lit8 v5, v0, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_27

    monitor-exit v3

    return-void

    :catch_24
    move-exception v1

    const/4 v0, 0x0

    goto :goto_12

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private initAlpm()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "mAlpmLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initDoze()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "mDozeLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSentDisplayOnTimeIntent(I)V
    .registers 7

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-lez p1, :cond_22

    const v2, 0x278d00

    div-int v1, p1, v2

    if-gt v1, v3, :cond_15

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_15

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSentDisplayOnTimeIntent:[I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    if-lt v1, v3, :cond_22

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "already sent ACTION_DISPLAY_ON_TIME all months"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z

    :cond_22
    return-void
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    goto :goto_f
.end method

.method private isCoverClosedBySysfs()Z
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    const-string/jumbo v1, "/sys/class/sec/sec_key/hall_detect"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    return v1

    :cond_1a
    return v2
.end method

.method private isFamilyConnectedInstalled(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "com.samsung.android.familyshare.dashboard"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isInfinityWallpaper()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    return v0
.end method

.method private isInputDeviceLightAvailable(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-nez v2, :cond_14

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->verifiedCoverClosedLocked()Z

    move-result v2

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v2, v0, :cond_15

    :cond_14
    return v1

    :cond_15
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_20

    :cond_1f
    return v1

    :cond_20
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_29

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    :cond_29
    return v0

    :cond_2a
    if-ne p1, v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isKeyboardLightDisabledByNightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    goto :goto_3c

    :cond_3f
    return v1
.end method

.method private isInteractiveInternal()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isKeyboardLightDisabledByNightMode()Z
    .registers 5

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1d

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1d

    return v3

    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method private isLowPowerModeInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    return v3

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private isPreSmartStayNeeded(J)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v2, v0, :cond_1b

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1b

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_18
.end method

.method private isProximityPositiveInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isQuickBootCall()Z
    .registers 9

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_17

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "com.qapp.quickboot"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    return v6

    :cond_34
    const/4 v6, 0x0

    return v6
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_e

    const/4 v0, 0x0

    return v0

    :sswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
    .end sparse-switch
.end method

.method private isSmartStayNeeded(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isSupportCover()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method private isTablet()Z
    .registers 3

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static isValidBrightness(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0xff

    if-gt p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isValidBrightnessExtended(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    if-gt p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_1c

    monitor-exit v1

    return v0

    :sswitch_9
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :sswitch_c
    :try_start_c
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_16

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_18

    move-result v0

    :cond_16
    monitor-exit v1

    return v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_9
        0x6 -> :sswitch_9
        0xa -> :sswitch_9
        0x1a -> :sswitch_9
        0x20 -> :sswitch_c
        0x40 -> :sswitch_9
        0x80 -> :sswitch_9
    .end sparse-switch
.end method

.method private isWakeUpPreventionNeededForEdgeLightingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-nez v0, :cond_6

    return v2

    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_d
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_22

    return v2

    :sswitch_17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edge/EdgeManagerInternal;->showForWakeLock(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :sswitch_data_22
    .sparse-switch
        0x6 -> :sswitch_17
        0xa -> :sswitch_17
        0x1a -> :sswitch_17
    .end sparse-switch
.end method

.method private isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private isWakeUpPreventionNeededLocked()Z
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_8

    return v3

    :cond_8
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "!@Screen__On : Cancel (proximity)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v1, :cond_57

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_50

    :cond_2b
    :goto_2b
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen__On : Cancel (coverType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1d

    :cond_50
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1d

    goto :goto_2b

    :cond_57
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualScreenFolder:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1d

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "Screen__On : Cancel (folder)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private logScreenOn()V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "Screen turning on"

    const-wide/32 v8, 0x20000

    invoke-static {v8, v9, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    sub-long/2addr v2, v8

    long-to-int v5, v2

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v2, 0xc6

    invoke-direct {v6, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-virtual {v6, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v2, v5

    invoke-virtual {v6, v2, v3}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    invoke-static {v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const-wide/16 v2, 0x0

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    const/16 v0, 0xc8

    if-lt v5, v0, :cond_52

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Screen on took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method private logSleepTimeoutRecapturedLocked()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long v2, v4, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_17

    const/16 v4, 0xaab

    invoke-static {v4, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_17
    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] lowLevelReboot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    if-nez p0, :cond_2b

    const-string/jumbo p0, ""

    :cond_2b
    const-string/jumbo v1, "quiescent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    const-string/jumbo p0, ""

    :cond_39
    :goto_39
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "recovery-update"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_4b
    const-string/jumbo p0, "recovery"

    :cond_4e
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",quiescent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_66
    const-string/jumbo v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x4e20

    :try_start_82
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_ae

    :goto_85
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "Unexpected return from lowLevelReboot!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8f
    const-string/jumbo v1, ",quiescent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "quiescent"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_39

    :catch_ae
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_85
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[api] lowLevelShutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    if-nez p0, :cond_27

    const-string/jumbo p0, ""

    :cond_27
    const-string/jumbo v0, "sys.powerctl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private napInternal(JI)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .registers 11

    const/4 v2, 0x0

    const-wide/32 v4, 0x20000

    const/4 v3, 0x1

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, v3, :cond_10

    :cond_f
    return v2

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    const-string/jumbo v0, "nap"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_22
    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nap time (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4f

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_4f
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v0, :cond_6

    return v3

    :cond_6
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needDisplaySuspendBlockerLocked::mPendingForceUnblankDisplayState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_28
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v0

    if-eqz v0, :cond_31

    return v3

    :cond_31
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_44

    :cond_43
    return v3

    :cond_44
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_49

    return v3

    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_25
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_47

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/power/Notifier;->onWakeLockChanging(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_47
    return-void
.end method

.method private notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_27
    return-void
.end method

.method private parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_2d

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p3, :cond_13

    :try_start_9
    aget-object v5, p1, v2

    aget-object v6, p2, v2

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    move-object v3, v4

    :goto_14
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\{"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\}"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2d
    move-exception v1

    :goto_2e
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_14

    :catch_32
    move-exception v1

    move-object v3, v4

    goto :goto_2e
.end method

.method private postAfterBootCompleted(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void

    :cond_c
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "Delaying runnable until system is booted"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    goto :goto_b
.end method

.method private powerHintInternal(II)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    return-void
.end method

.method private printCallerInfo()V
    .registers 7

    const/4 v5, 0x5

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    if-le v3, v5, :cond_ae

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_93
    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ae
    const/4 v0, 0x0

    :goto_af
    array-length v3, v2

    if-ge v0, v3, :cond_93

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_af
.end method

.method private static printCurrentClassAndMethod()V
    .registers 5

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[flow] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "()  in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printWakeLockLocked()V
    .registers 13

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_a3

    :cond_a
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL] On : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]  mStayOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  mUserActivitySummary: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_249

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_76
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_249

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_76

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_a3
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL] Off : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_249

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/SuspendBlocker;

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_d1

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->-get0(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->-get0(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ad

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x11

    if-eqz v5, :cond_d1

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_174

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_144
    :goto_144
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_174

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_144

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    :cond_174
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x2

    if-eqz v5, :cond_d1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_180
    :goto_180
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_180

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    :cond_1ad
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->-get0(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->-get0(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v5, :cond_1e3

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]     mUserActivitySummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_207

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]     mDisplayPowerRequest.policy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_207
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v5, :cond_227

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]     mDisplayReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_227
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v5, :cond_d1

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PWL]     mBootCompleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d1

    :cond_249
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v1, 0x112001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, 0x112004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x112004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x112004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x1120049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x112004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    const v1, 0x10e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    const v1, 0x3eaa7efa    # 0.333f

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    const v1, 0x11200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    return-void
.end method

.method private readDisplayOnTimeFromEfs()I
    .registers 4

    const-string/jumbo v2, "/efs/afc/display_on_time"

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_18

    const/4 v1, 0x0

    :cond_18
    return v1
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v3, ""

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_2a
    .catchall {:try_start_4 .. :try_end_10} :catchall_39

    if-eqz v1, :cond_1c

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_4c
    .catchall {:try_start_12 .. :try_end_1b} :catchall_49

    move-result-object v3

    :cond_1c
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_25

    :cond_21
    :goto_21
    move-object v0, v1

    :cond_22
    :goto_22
    if-eqz v3, :cond_45

    return-object v3

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_2a
    move-exception v2

    :goto_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    if-eqz v0, :cond_22

    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_22

    :catch_34
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catchall_39
    move-exception v4

    :goto_3a
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    throw v4

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    :cond_45
    const-string/jumbo v4, ""

    return-object v4

    :catchall_49
    move-exception v4

    move-object v0, v1

    goto :goto_3a

    :catch_4c
    move-exception v2

    move-object v0, v1

    goto :goto_2b
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .registers 11

    const-wide/32 v4, 0x20000

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v0, :cond_f

    :cond_e
    return v2

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "reallyGoToSleepNoUpdateLocked: GoToSleep prevention is enabled"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_2f
    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_5a

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    return v0

    :catchall_5a
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private releaseAbuseWakelockLocked()V
    .registers 6

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseAbuseWakelockLocked; size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;ZZ)V

    goto :goto_26

    :cond_3a
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 13

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_74

    move-result v0

    if-gez v0, :cond_c

    monitor-exit v5

    return-void

    :cond_c
    :try_start_c
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_25

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsDualScreenFolder:Z

    if-eqz v6, :cond_1e

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    :cond_1e
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    :cond_25
    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_a8

    :cond_2e
    :goto_2e
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v4, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_74

    monitor-exit v5

    return-void

    :sswitch_39
    :try_start_39
    iget-boolean v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v4, :cond_2e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long v2, v6, v8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/16 v6, 0xaa9

    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_73
    .catchall {:try_start_39 .. :try_end_73} :catchall_74

    goto :goto_2e

    :catchall_74
    move-exception v4

    monitor-exit v5

    throw v4

    :sswitch_77
    :try_start_77
    const-string/jumbo v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[api] release WakeLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_77 .. :try_end_a7} :catchall_74

    goto :goto_2e

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_39
        0x6 -> :sswitch_77
        0xa -> :sswitch_77
        0x1a -> :sswitch_77
        0x20 -> :sswitch_77
        0x40 -> :sswitch_77
        0x80 -> :sswitch_77
    .end sparse-switch
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v1, :cond_1e

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method private restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    :cond_20
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_16

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void
.end method

.method private sendCurrentBrightnessStatus()V
    .registers 5

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/PowerManagerService;->LCBS_KEYS:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/power/PowerManagerService;->LCBS_KEYS:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendDPSIDuration()V
    .registers 13

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v4, v3, v8

    const-wide/32 v6, 0x15180

    cmp-long v3, v4, v6

    if-gez v3, :cond_5c

    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v4, v3, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v4, v3, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v4, v3, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v4, v3, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_4d
    const/4 v1, 0x0

    :goto_4e
    sget-object v3, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5c
    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDPSIDuration LOD : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v6, v5, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_7b
    return-void
.end method

.method private sendDisplayonTimeIntent(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v1, Lcom/android/server/power/PowerManagerService$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/PowerManagerService$16;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sensorBlockedByCoverLocked()Z
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    sparse-switch v0, :sswitch_data_a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return v0

    :sswitch_8
    const/4 v0, 0x0

    return v0

    :sswitch_data_a
    .sparse-switch
        -0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x9 -> :sswitch_8
        0xa -> :sswitch_8
    .end sparse-switch
.end method

.method private setAlpmModeInternal(IIILandroid/os/IBinder;)V
    .registers 16

    const/4 v10, 0x0

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[api] setAlpmMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", startLine : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", endLine : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v5, "/sys/class/lcd/panel/alpm"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_6c
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_76} :catch_9f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_76} :catch_b9

    :try_start_76
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_a4

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_85} :catch_a8

    :goto_85
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    if-nez v7, :cond_90

    new-instance v7, Lcom/android/server/power/PowerManagerService$AlpmLock;

    invoke-direct {v7, p0, p4}, Lcom/android/server/power/PowerManagerService$AlpmLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    :cond_90
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_93
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v9, 0x80000

    or-int/2addr v7, v9

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_b6

    monitor-exit v8

    return-void

    :catch_9f
    move-exception v0

    :try_start_a0
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_b9

    return-void

    :cond_a4
    const/4 v7, 0x0

    :try_start_a5
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a7} :catch_a8

    goto :goto_85

    :catch_a8
    move-exception v1

    move-object v3, v4

    :goto_aa
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    :goto_b0
    return-void

    :catch_b1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b0

    :catchall_b6
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_b9
    move-exception v1

    goto :goto_aa
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_15

    if-nez v1, :cond_a

    monitor-exit v3

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_15

    monitor-exit v3

    if-eqz p1, :cond_18

    const/4 v1, 0x3

    :goto_10
    const/4 v3, 0x2

    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_18
    move v1, v2

    goto :goto_10
.end method

.method private setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] setButtonTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setDisableWakeUpPreventionInternal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionDisabled:Z

    return-void
.end method

.method private setDozeModeBySysfs(I)V
    .registers 12

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    if-eq v7, p1, :cond_52

    const/4 v7, -0x1

    if-ne p1, v7, :cond_11

    const-string/jumbo v7, "PowerManagerService"

    const-string/jumbo v8, "setDozeModeBySysfs:  value is -1 , we ignore it. "

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.DEVICE_POWER"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    const/4 v3, 0x0

    const-string/jumbo v5, "/sys/class/lcd/panel/alpm"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :try_start_24
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_53
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_58

    :try_start_2e
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDozeModeBySysfs done:  value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_52} :catch_65

    :cond_52
    return-void

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception v1

    :goto_59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    :catch_65
    move-exception v1

    move-object v3, v4

    goto :goto_59
.end method

.method private setDozeOverrideFromAodLocked(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_15

    :cond_8
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_15
    return-void
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_18

    :cond_b
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setForcedDisplayOffInternal(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    if-eqz v0, :cond_10

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_10

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setGoToSleepPreventionInternal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    return-void
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 6

    const-wide/32 v2, 0x20000

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_2d

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_27
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 12

    const-wide/32 v8, 0x20000

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v4, :cond_5f

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForcedDisplayOff:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "setHalInteractiveModeLocked returned because display is forced off"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHalInteractive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_59

    :try_start_37
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_6b

    if-eqz v4, :cond_59

    const/4 v2, 0x0

    :try_start_3c
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/sys/class/sec/tsp/prox_power_off"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_45} :catch_82
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_70
    .catchall {:try_start_3c .. :try_end_45} :catchall_9d

    :try_start_45
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Turning off TSP completely"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_54} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_54} :catch_b5
    .catchall {:try_start_45 .. :try_end_54} :catchall_af

    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_60
    .catchall {:try_start_56 .. :try_end_59} :catchall_6b

    :cond_59
    :goto_59
    :try_start_59
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6b

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5f
    return-void

    :catch_60
    move-exception v1

    :try_start_61
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Failed to close /sys/class/sec/tsp/prox_power_off"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6b

    goto :goto_59

    :catchall_6b
    move-exception v4

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :catch_70
    move-exception v1

    :goto_71
    if-eqz v2, :cond_59

    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_6b

    goto :goto_59

    :catch_77
    move-exception v1

    :try_start_78
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Failed to close /sys/class/sec/tsp/prox_power_off"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_6b

    goto :goto_59

    :catch_82
    move-exception v0

    :goto_83
    :try_start_83
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "/sys/class/sec/tsp/prox_power_off not found"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_9d

    if-eqz v2, :cond_59

    :try_start_8e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92
    .catchall {:try_start_8e .. :try_end_91} :catchall_6b

    goto :goto_59

    :catch_92
    move-exception v1

    :try_start_93
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Failed to close /sys/class/sec/tsp/prox_power_off"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_6b

    goto :goto_59

    :catchall_9d
    move-exception v4

    :goto_9e
    if-eqz v2, :cond_a3

    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_6b

    :cond_a3
    :goto_a3
    :try_start_a3
    throw v4

    :catch_a4
    move-exception v1

    const-string/jumbo v5, "PowerManagerService"

    const-string/jumbo v6, "Failed to close /sys/class/sec/tsp/prox_power_off"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_a3 .. :try_end_ae} :catchall_6b

    goto :goto_a3

    :catchall_af
    move-exception v4

    move-object v2, v3

    goto :goto_9e

    :catch_b2
    move-exception v0

    move-object v2, v3

    goto :goto_83

    :catch_b5
    move-exception v1

    move-object v2, v3

    goto :goto_71
.end method

.method private setInputDeviceEnabledFromNative(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private setLCDFlashModeInternal(ZLandroid/os/IBinder;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    if-eq v0, p1, :cond_12

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[api] setLowPowerModeInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsPowered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2c
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_65

    if-eqz v3, :cond_32

    monitor-exit v2

    return v0

    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    if-eqz p1, :cond_3e

    move v0, v1

    :cond_3e
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_54

    if-eqz p1, :cond_59

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_65

    monitor-exit v2

    return v1

    :cond_59
    if-nez p1, :cond_54

    :try_start_5b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_65

    goto :goto_54

    :catchall_65
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private setNotiLightScreenTimeoutOverride(J)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_25

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] setNotiLightScreenTimeoutOverride: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotificationLightScreenOverride:J
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setProximityDebounceTimeLockedInternal(Landroid/os/IBinder;II)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iput p2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    iput p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v3

    return-void

    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_2c

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSmartStayLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startSmartStayLocked()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->stopSmartStayLocked()V

    goto :goto_7
.end method

.method private setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_15

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLastBrightnessSettingChangedTimeLocked()V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_17

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLastBrightnessSettingChangedTimeLocked()V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideExtendedInternal(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    if-eq v0, p1, :cond_15

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLastBrightnessSettingChangedTimeLocked()V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_15

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLastBrightnessSettingChangedTimeLocked()V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUserActivityTimeoutLocked(J)V
    .registers 8

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    int-to-long v2, v2

    add-long v0, p1, v2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 14

    const/16 v7, 0x12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v3, v6

    if-ne v3, v11, :cond_9b

    const/4 v1, 0x0

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_37

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_7b

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_37

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_37

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v3, v7, :cond_37

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v6, 0x4

    if-le v3, v6, :cond_37

    const/4 v1, 0x1

    :cond_37
    :goto_37
    iget-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v3, v1, :cond_9b

    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_7a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long v4, v6, v8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "(disabled)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    const/16 v6, 0xaa9

    invoke-static {v6, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_7a
    return v11

    :cond_7b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    if-eqz v3, :cond_37

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v3, :cond_99

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v3, v7, :cond_99

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v6, 0xc

    if-le v3, v6, :cond_97

    const/4 v1, 0x1

    goto :goto_37

    :cond_97
    const/4 v1, 0x0

    goto :goto_37

    :cond_99
    const/4 v1, 0x0

    goto :goto_37

    :cond_9b
    return v10
.end method

.method private setWakefulnessLocked(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_14

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    :cond_14
    return-void
.end method

.method private shouldBoostScreenBrightness()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    move v0, v1

    goto :goto_e
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v1, :cond_18

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_18

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const/16 v2, 0x72

    if-eq v1, v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 8

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    return v3

    :cond_10
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    return v3

    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_25

    return v3

    :cond_25
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_34

    return v3

    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V

    return-void
.end method

.method private shutdownOrRebootInternal(IZLjava/lang/String;ZZ)V
    .registers 20

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_61

    :cond_a
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, "recovery"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "recovery-update"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_26
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "!@ Recovery reboot by RescueParty"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v11, 0x0

    :try_start_31
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v3, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_95
    .catchall {:try_start_31 .. :try_end_3e} :catchall_b5

    :try_start_3e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    new-instance v12, Ljava/io/FileWriter;

    const-string/jumbo v2, "/sys/class/sec/sec_debug/recovery_cause"

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_e0
    .catchall {:try_start_3e .. :try_end_4d} :catchall_d9

    :try_start_4d
    const-string/jumbo v2, "PowerManagerService Recovery reboot by RescueParty"

    invoke-virtual {v12, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_53} :catch_e3
    .catchall {:try_start_4d .. :try_end_53} :catchall_dc

    move-object v11, v12

    :cond_54
    if-eqz v8, :cond_59

    :try_start_56
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_59
    if-eqz v11, :cond_5e

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_8a

    :cond_5e
    :goto_5e
    invoke-static/range {p3 .. p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    :cond_61
    new-instance v1, Lcom/android/server/power/PowerManagerService$14;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$14;-><init>(Lcom/android/server/power/PowerManagerService;IZZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v13

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_d8

    monitor-enter v1

    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88
    .catchall {:try_start_84 .. :try_end_87} :catchall_d5

    goto :goto_84

    :catch_88
    move-exception v10

    goto :goto_84

    :catch_8a
    move-exception v9

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "Failed to close recovery_cause"

    invoke-static {v2, v3, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catch_95
    move-exception v9

    :goto_96
    :try_start_96
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "!@ Failed to update recovery_cause"

    invoke-static {v2, v3, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_b5

    if-eqz v7, :cond_a4

    :try_start_a1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_a4
    if-eqz v11, :cond_5e

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_aa

    goto :goto_5e

    :catch_aa
    move-exception v9

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "Failed to close recovery_cause"

    invoke-static {v2, v3, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :catchall_b5
    move-exception v2

    :goto_b6
    if-eqz v7, :cond_bb

    :try_start_b8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_bb
    if-eqz v11, :cond_c0

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c0} :catch_c1

    :cond_c0
    :goto_c0
    throw v2

    :catch_c1
    move-exception v9

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "Failed to close recovery_cause"

    invoke-static {v3, v4, v9}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0

    :cond_cc
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_d5
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_d8
    return-void

    :catchall_d9
    move-exception v2

    move-object v7, v8

    goto :goto_b6

    :catchall_dc
    move-exception v2

    move-object v11, v12

    move-object v7, v8

    goto :goto_b6

    :catch_e0
    move-exception v9

    move-object v7, v8

    goto :goto_96

    :catch_e3
    move-exception v9

    move-object v11, v12

    move-object v7, v8

    goto :goto_96
.end method

.method private startSmartStayLocked()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "[smart stay] SmartStay alredy started"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "[smart stay] SmartStay start"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "[smart stay] "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/power/PowerManagerService$17;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$17;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    return-void
.end method

.method private stopSmartStayLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "[smart stay] SmartStay stop"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .registers 16

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const v9, 0x8393f

    and-int/2addr v9, p1

    if-eqz v9, :cond_276

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v4

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v4, v9, :cond_24

    if-nez v4, :cond_24

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    :cond_24
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v4, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x1

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    const/4 v7, 0x0

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27d

    const/4 v0, 0x1

    :goto_32
    const/4 v3, 0x0

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_280

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_39
    :goto_39
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    if-eq v3, v9, :cond_49

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v10, Lcom/android/server/power/PowerManagerService$12;

    invoke-direct {v10, p0}, Lcom/android/server/power/PowerManagerService$12;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_49
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_71

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_71

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isCoverClosedBySysfs()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCoverClosedBySysfs called on closed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    :cond_71
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-nez v9, :cond_87

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v9

    if-eqz v9, :cond_87

    if-eqz v0, :cond_87

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v8

    if-gez v8, :cond_87

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    :cond_87
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_9d

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v9, :cond_9d

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    if-nez v9, :cond_301

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    :goto_97
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9d

    const/16 v8, 0xff

    :cond_9d
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    if-eqz v9, :cond_bb

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-nez v9, :cond_ad

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v9

    if-eqz v9, :cond_ad

    if-nez v0, :cond_bb

    :cond_ad
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v9, :cond_b7

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v9, :cond_b7

    if-nez v0, :cond_bb

    :cond_b7
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    if-eqz v9, :cond_bc

    :cond_bb
    const/4 v0, 0x0

    :cond_bc
    if-eqz v0, :cond_ca

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_304

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    :cond_ca
    :goto_ca
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    if-le v8, v9, :cond_313

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    if-ne v8, v9, :cond_310

    const/4 v2, 0x1

    :goto_d3
    if-eqz v2, :cond_316

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_e1
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v8, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    iput-wide v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessSettingChangedTime:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_324

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    :goto_135
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v9, :cond_145

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    :cond_145
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v9}, Lcom/android/server/power/PowerManagerService;->updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_330

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_169

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_169

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x3

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    :cond_169
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    :goto_16f
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v9, :cond_33c

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getMaxProximityPositiveDebounce()I

    move-result v10

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getMaxProximityNegativeDebounce()I

    move-result v10

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    :goto_18b
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    if-eqz v9, :cond_348

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    xor-int/lit8 v9, v9, 0x1

    :goto_19b
    iput-boolean v9, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v9, :cond_1d5

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1d5

    if-nez v6, :cond_1d5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnblaedTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xdbba0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1d5

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v10, Lcom/android/server/power/PowerManagerService$13;

    invoke-direct {v10, p0}, Lcom/android/server/power/PowerManagerService$13;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1d5
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCriticalLow:Z

    if-eqz v9, :cond_34b

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_34b

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastBatteryLevelCriticalLowTime:J

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessSettingChangedTime:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_34b

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    :goto_201
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessScaleFactorFromSettings:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mResetPersonalAutoBrightnessData:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->resetPersonalAutoBrightnessData:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mUpdateAutoBrightnessImmediately:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->updateAutoBrightnessImmediately:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsInfinityWallpaper:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isInfinityWallpaper:Z

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    and-int/lit16 v9, p1, 0x1000

    if-eqz v9, :cond_235

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    :cond_235
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eq v9, v5, :cond_255

    const-string/jumbo v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mDisplayReady: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_255
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v9, :cond_26d

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_26d

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_352

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    :cond_26d
    :goto_26d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mResetPersonalAutoBrightnessData:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mUpdateAutoBrightnessImmediately:Z

    :cond_276
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v9, :cond_371

    xor-int/lit8 v9, v5, 0x1

    :goto_27c
    return v9

    :cond_27d
    const/4 v0, 0x0

    goto/16 :goto_32

    :cond_280
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-eqz v9, :cond_289

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSetting:I

    const/4 v0, 0x0

    goto/16 :goto_39

    :cond_289
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_298

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_39

    :cond_298
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_2ac

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    if-eqz v9, :cond_39

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    goto/16 :goto_39

    :cond_2ac
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    invoke-direct {p0, v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightnessExtended(I)Z

    move-result v9

    if-eqz v9, :cond_2b8

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    goto/16 :goto_39

    :cond_2b8
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_2c4

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_39

    :cond_2c4
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    if-eqz v9, :cond_2f5

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLockedStarted:Z

    if-eqz v9, :cond_2e3

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v9

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    if-gez v9, :cond_2dc

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    :cond_2dc
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLockedStarted:Z

    :cond_2df
    :goto_2df
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    goto/16 :goto_39

    :cond_2e3
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessSettingChangedForGameAutobrightness:Z

    if-eqz v9, :cond_2df

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v10, Lcom/android/server/power/PowerManagerService$11;

    invoke-direct {v10, p0}, Lcom/android/server/power/PowerManagerService$11;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessSettingChangedForGameAutobrightness:Z

    goto :goto_2df

    :cond_2f5
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_39

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_39

    :cond_301
    const/4 v9, 0x1

    goto/16 :goto_97

    :cond_304
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_ca

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_ca

    :cond_310
    const/4 v2, 0x0

    goto/16 :goto_d3

    :cond_313
    const/4 v2, 0x0

    goto/16 :goto_d3

    :cond_316
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_e1

    :cond_324
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    goto/16 :goto_135

    :cond_330
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x0

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_16f

    :cond_33c
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    goto/16 :goto_18b

    :cond_348
    const/4 v9, 0x0

    goto/16 :goto_19b

    :cond_34b
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    goto/16 :goto_201

    :cond_352
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    if-nez v9, :cond_26d

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_367

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    :goto_362
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    goto/16 :goto_26d

    :cond_367
    const-string/jumbo v9, "PowerManagerService"

    const-string/jumbo v10, "Pending mForceblankDisplayRunnable cleared due to WAKEFULNESS_AWAKE"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_362

    :cond_371
    const/4 v9, 0x0

    goto/16 :goto_27c
.end method

.method private updateDreamLocked(IZ)V
    .registers 4

    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_6

    if-eqz p2, :cond_d

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    :cond_d
    return-void
.end method

.method private updateInputDeviceLightStateLocked(I)V
    .registers 12

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const v2, 0x74123

    and-int/2addr v2, p1

    if-eqz v2, :cond_83

    const/4 v0, 0x1

    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_12

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_35

    :cond_12
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const-wide/16 v6, 0x5dc

    cmp-long v2, v4, v6

    if-ltz v2, :cond_84

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    if-eqz v2, :cond_84

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    long-to-int v1, v4

    :goto_21
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap1(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eq v2, v1, :cond_87

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap5(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    invoke-direct {p0, v9}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v0, 0x0

    :cond_35
    :goto_35
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_57

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap0(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap4(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap4(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    :cond_57
    :goto_57
    if-eqz v0, :cond_83

    invoke-direct {p0, v9}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap1(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    :goto_6c
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_83

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap1(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    :cond_83
    :goto_83
    return-void

    :cond_84
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    goto :goto_21

    :cond_87
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap1(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    if-eq v2, v4, :cond_a4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap5(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v0, 0x0

    goto :goto_35

    :cond_a4
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    if-nez v2, :cond_c0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_c0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->verifiedCoverClosedLocked()Z

    move-result v2

    :goto_b0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    if-eq v2, v4, :cond_c2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    goto/16 :goto_35

    :cond_c0
    move v2, v3

    goto :goto_b0

    :cond_c2
    const/4 v0, 0x0

    goto/16 :goto_35

    :cond_c5
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_e3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap0(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    if-eqz v2, :cond_e3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2, v8}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap4(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-static {v2, v8}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->-wrap4(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    goto/16 :goto_57

    :cond_e3
    const/4 v0, 0x0

    goto/16 :goto_57

    :cond_e6
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_6c

    :cond_ec
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_83
.end method

.method private updateIsPoweredLocked(I)V
    .registers 16

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_ea

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/4 v4, 0x5

    if-gt v1, v4, :cond_eb

    const/4 v0, 0x1

    :goto_33
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCriticalLow:Z

    if-eq v0, v1, :cond_41

    if-eqz v0, :cond_3f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastBatteryLevelCriticalLowTime:J

    :cond_3f
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCriticalLow:Z

    :cond_41
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v13, v1, :cond_49

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v11, v1, :cond_df

    :cond_49
    const-string/jumbo v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v8

    const/4 v12, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_101

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-nez v1, :cond_ee

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Register SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    :cond_b1
    :goto_b1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v13, v11, v8}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_d7

    if-eqz v12, :cond_d7

    const-string/jumbo v1, " powered change"

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const-string/jumbo v4, "android.server.power:POWER"

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x3e8

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    :cond_d7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_df
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SAVER_V2:Z

    if-nez v1, :cond_138

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eq v13, v1, :cond_138

    :goto_e7
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    :cond_ea
    return-void

    :cond_eb
    const/4 v0, 0x0

    goto/16 :goto_33

    :cond_ee
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-nez v1, :cond_b1

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_b1

    const/4 v12, 0x0

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when connect wireless chager "

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    :cond_101
    const/4 v1, 0x4

    if-ne v11, v1, :cond_b1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-eqz v1, :cond_122

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v1, :cond_b1

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Unregister SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_b1

    :cond_122
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_b1

    const/4 v12, 0x0

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when disconnect wireless charger"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    goto/16 :goto_b1

    :cond_138
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-eq v9, v1, :cond_ea

    goto :goto_e7
.end method

.method private updateLastBrightnessSettingChangedTimeLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessSettingChangedTime:J

    :cond_a
    return-void
.end method

.method private updateLowPowerModeLocked()V
    .registers 6

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    :cond_d
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowPowerModeLocked: mBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ActivityManagerNative.isSystemReady(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v2, :cond_e8

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_45

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SAVER_V2:Z

    if-eqz v2, :cond_e8

    :cond_45
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v2, :cond_4f

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    if-gt v2, v3, :cond_e8

    :cond_4f
    const/4 v0, 0x1

    :goto_50
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PSM] lowPowerModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (mLowPowerModeSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsPowered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mAutoLowPowerModeConfigured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mBatteryLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mLowBatteryTriggerLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUltraPowerSavingModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mEmergencyModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-ne v2, v0, :cond_d4

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    if-eqz v2, :cond_e7

    :cond_d4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    if-eqz v0, :cond_db

    const/4 v1, 0x1

    :cond_db
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    new-instance v1, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->postAfterBootCompleted(Ljava/lang/Runnable;)V

    :cond_e7
    return-void

    :cond_e8
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_f0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    if-eqz v2, :cond_f4

    :cond_f0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SAVER_V2:Z

    goto/16 :goto_50

    :cond_f4
    const/4 v0, 0x0

    goto/16 :goto_50
.end method

.method private updatePowerStateLocked()V
    .registers 11

    const-wide/32 v8, 0x20000

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v3, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v6, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-string/jumbo v3, "updatePowerState"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_23
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    :cond_37
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v1, v0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v3, :cond_54

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateInputDeviceLightStateLocked(I)V

    :cond_54
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_61

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_61
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .registers 14

    const/4 v5, 0x3

    const/4 v4, 0x0

    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v1, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_35

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide/16 v10, 0x1388

    add-long v8, v6, v10

    cmp-long v1, v8, v2

    if-lez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_35
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    const/16 v6, 0x3e8

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_43
    return-void
.end method

.method private updateSettingsLocked()V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v26, "screensaver_enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6fa

    const/16 v25, 0x1

    :goto_17
    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_6fe

    const/16 v25, 0x1

    :goto_29
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-string/jumbo v26, "screensaver_activate_on_sleep"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    move/from16 v25, v0

    if-eqz v25, :cond_702

    const/16 v25, 0x1

    :goto_3c
    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_706

    const/16 v25, 0x1

    :goto_4e
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    const-string/jumbo v26, "screensaver_activate_on_dock"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    move/from16 v25, v0

    if-eqz v25, :cond_70a

    const/16 v25, 0x1

    :goto_61
    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_70e

    const/16 v25, 0x1

    :goto_73
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const-string/jumbo v25, "screen_off_timeout"

    const/16 v26, 0x3a98

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    const-string/jumbo v25, "sleep_timeout"

    const/16 v26, -0x1

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    const-string/jumbo v25, "stay_on_while_plugged_in"

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "theater_mode_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_712

    const/16 v25, 0x1

    :goto_dd
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-object/from16 v25, v0

    const/16 v26, -0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    move/from16 v25, v0

    if-eqz v25, :cond_134

    const-string/jumbo v25, "double_tap_to_wake"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_716

    const/4 v8, 0x1

    :goto_113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v8, v0, :cond_134

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_719

    const/16 v25, 0x1

    :goto_12b
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    :cond_134
    const-string/jumbo v25, "user_activity_timeout"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getCurrentBrightnessSettingLocked()I

    move-result v18

    const-string/jumbo v25, "screen_brightness_for_vr"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSettingDefault:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSetting:I

    const-string/jumbo v25, "screen_brightness"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getCurrentBrightnessSettingLocked()I

    move-result v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_271

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v25, v0

    if-nez v25, :cond_213

    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_213

    const/4 v15, -0x1

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getCurrentBrightnessSettingLocked()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v24, v26

    sget-object v25, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    sget-object v26, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x1388

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_213
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverrideExtended:I

    sget-boolean v25, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-nez v25, :cond_271

    const/high16 v25, 0x7fc00000    # Float.NaN

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    move/from16 v26, v0

    sub-int v14, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v6, :cond_71d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v25, v0

    sub-int v25, v25, v6

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    :cond_271
    :goto_271
    sget-boolean v25, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-eqz v25, :cond_2ce

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v19, v0

    const-string/jumbo v25, "auto_brightness_detail"

    const/16 v26, 0x64

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_2ce

    const/4 v11, 0x1

    const/high16 v25, 0x7fc00000    # Float.NaN

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_74b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x64

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    :cond_2ce
    :goto_2ce
    const-string/jumbo v25, "button_key_light"

    const/16 v26, 0x5dc

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    move/from16 v25, v0

    if-eqz v25, :cond_321

    const-string/jumbo v25, "key_backlight_timeout"

    const/16 v26, 0xbb8

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    const-string/jumbo v25, "key_night_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    :cond_321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move/from16 v21, v0

    const-string/jumbo v25, "intelligent_sleep_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_755

    const/16 v25, 0x1

    :goto_33e
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_353

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->setSmartStayLocked()V

    :cond_353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38d

    const-string/jumbo v25, "is_secured_lock"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    const-string/jumbo v25, "lock_screen_lock_after_timeout"

    const/16 v26, -0x1

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    :cond_38d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v20, v0

    const-string/jumbo v25, "display_outdoor_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_759

    const/16 v25, 0x1

    :goto_3b0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_3de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3de

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnblaedTime:J

    const-string/jumbo v25, "PowerManagerService"

    const-string/jumbo v26, "[api] updateSettingsLocked : Update OutdoorMode enabled time"

    invoke-static/range {v25 .. v26}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3de
    if-eqz v11, :cond_3e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateLastBrightnessSettingChangedTimeLocked()V

    :cond_3e3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v17, v0

    const-string/jumbo v25, "screen_brightness_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_41f

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v25, v0

    if-nez v25, :cond_41f

    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    :cond_41f
    const-string/jumbo v25, "low_power"

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_75d

    const/4 v13, 0x1

    :goto_431
    const-string/jumbo v25, "emergency_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_760

    const/4 v9, 0x1

    :goto_44d
    const-string/jumbo v25, "ultra_powersaving_mode"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_763

    const/16 v23, 0x1

    :goto_46a
    const-string/jumbo v25, "low_power_trigger_level"

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_767

    const/4 v5, 0x1

    :goto_47c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_490

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v12, v0, :cond_76a

    :cond_490
    :goto_490
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    :cond_4a9
    const-string/jumbo v26, "auto_brightness_limit"

    sget-boolean v25, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    if-eqz v25, :cond_794

    const/16 v25, 0x5a

    :goto_4b2
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_798

    :goto_4be
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    const-string/jumbo v25, "wakeup_prevention"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_79b

    const/16 v25, 0x1

    :goto_4d9
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    const-string/jumbo v25, "wakeup_prevention_packages"

    const/16 v26, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move/from16 v16, v0

    const-string/jumbo v25, "game_autobrightness_lock"

    const/16 v26, 0x0

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_79f

    const/16 v25, 0x1

    :goto_511
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_53c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move/from16 v25, v0

    if-eqz v25, :cond_53c

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLockedStarted:Z

    const-string/jumbo v25, "PowerManagerService"

    const-string/jumbo v26, "[api] updateSettingsLocked : game_autobrightness_lock started"

    invoke-static/range {v25 .. v26}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    move/from16 v25, v0

    if-eqz v25, :cond_55a

    if-eqz v11, :cond_55a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForGameAutobrightness:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mBrightnessSettingChangedForGameAutobrightness:Z

    :cond_55a
    const-string/jumbo v25, "PowerManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "[api] [PSM] updateSettingsLocked : lowPowerModeEnabled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " lowBatteryTriggerLevel: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mUltraPowerSavingModeEnabled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mEmergencyModeEnabled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mAutoBrightnessScaleFactorFromSettings: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessScaleFactorFromSettings:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v26, "PowerManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "[api] [BRIGHTNESS] updateSettingsLocked : mScreenBrightnessModeSetting: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v25, v0

    if-nez v25, :cond_7a3

    const-string/jumbo v25, "MANUAL"

    :goto_5d4
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " mScreenBrightnessSetting: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " mScreenAutoBrightnessAdjustmentSetting: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " mOutdoorModeSetting : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v25, "PowerManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mDreamsActivateOnSleepSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mDreamsActivateOnDockSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mScreenOffTimeoutSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mStayOnWhilePluggedInSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mSmartStayEnabledSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mWakeUpPreventionForNotificationSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mWakeUpPreventionPackagesForNotificationSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mTouchKeyOffTimeoutSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mKeyboardOffTimeoutSetting: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x20

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void

    :cond_6fa
    const/16 v25, 0x0

    goto/16 :goto_17

    :cond_6fe
    const/16 v25, 0x0

    goto/16 :goto_29

    :cond_702
    const/16 v25, 0x0

    goto/16 :goto_3c

    :cond_706
    const/16 v25, 0x0

    goto/16 :goto_4e

    :cond_70a
    const/16 v25, 0x0

    goto/16 :goto_61

    :cond_70e
    const/16 v25, 0x0

    goto/16 :goto_73

    :cond_712
    const/16 v25, 0x0

    goto/16 :goto_dd

    :cond_716
    const/4 v8, 0x0

    goto/16 :goto_113

    :cond_719
    const/16 v25, 0x0

    goto/16 :goto_12b

    :cond_71d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v6, :cond_741

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v25, v0

    sub-int v25, v25, v6

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_271

    :cond_741
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_271

    :cond_74b
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_2ce

    :cond_755
    const/16 v25, 0x0

    goto/16 :goto_33e

    :cond_759
    const/16 v25, 0x0

    goto/16 :goto_3b0

    :cond_75d
    const/4 v13, 0x0

    goto/16 :goto_431

    :cond_760
    const/4 v9, 0x0

    goto/16 :goto_44d

    :cond_763
    const/16 v23, 0x0

    goto/16 :goto_46a

    :cond_767
    const/4 v5, 0x0

    goto/16 :goto_47c

    :cond_76a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v5, v0, :cond_490

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    move/from16 v25, v0

    if-nez v25, :cond_490

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUltraPowerSavingModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_490

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mEmergencyModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v9, v0, :cond_4a9

    goto/16 :goto_490

    :cond_794
    const/16 v25, 0x0

    goto/16 :goto_4b2

    :cond_798
    const/4 v4, -0x1

    goto/16 :goto_4be

    :cond_79b
    const/16 v25, 0x0

    goto/16 :goto_4d9

    :cond_79f
    const/16 v25, 0x0

    goto/16 :goto_511

    :cond_7a3
    const-string/jumbo v25, "AUTO"

    goto/16 :goto_5d4
.end method

.method private updateStayOnLocked(I)V
    .registers 5

    const/4 v2, 0x0

    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_27

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    :goto_1d
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_27

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_27
    return-void

    :cond_28
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1d
.end method

.method private updateSuspendBlockerLocked()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_99

    const/4 v3, 0x1

    :goto_9
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v4

    if-nez v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isVr()Z

    move-result v1

    :goto_1d
    if-nez v0, :cond_26

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_26

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_26
    if-eqz v3, :cond_35

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_35
    if-eqz v2, :cond_44

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_44
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mNeedDozingSuspendBlocker:Z

    if-eqz v4, :cond_55

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDozingSuspendBlocker:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_55

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDozingSuspendBlocker:Z

    :cond_55
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v4, :cond_66

    if-eqz v1, :cond_5f

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v4, :cond_63

    :cond_5f
    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_66

    :cond_63
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    :cond_66
    if-nez v3, :cond_73

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_73
    if-nez v2, :cond_80

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v4, :cond_80

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_80
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mNeedDozingSuspendBlocker:Z

    if-nez v4, :cond_8f

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDozingSuspendBlocker:Z

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDozingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDozingSuspendBlocker:Z

    :cond_8f
    if-eqz v0, :cond_98

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_98

    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_98
    return-void

    :cond_99
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_9c
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 23

    and-int/lit8 v3, p3, 0x27

    if-eqz v3, :cond_2bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    :cond_32
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_42

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2be

    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    move/from16 v17, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7d

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v6, v15

    add-long/2addr v4, v6

    int-to-long v6, v14

    sub-long v12, v4, v6

    cmp-long v3, p1, v12

    if-gez v3, :cond_2db

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v3, :cond_bb

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_bb

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v6, v15

    add-long v12, v4, v6

    cmp-long v3, p1, v12

    if-gez v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_ac

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f9

    :cond_ac
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v4, v14

    sub-long/2addr v12, v4

    :cond_bb
    :goto_bb
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v3, :cond_e5

    if-ltz v16, :cond_309

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v3, v10, v4

    if-ltz v3, :cond_e5

    move/from16 v0, v16

    int-to-long v4, v0

    add-long v12, v10, v4

    cmp-long v3, p1, v12

    if-gez v3, :cond_e5

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    :cond_e5
    :goto_e5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_10f

    if-eqz v17, :cond_10f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_108

    cmp-long v3, v12, p1

    if-ltz v3, :cond_108

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_108

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_108
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v12, -0x1

    :cond_10f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v3, :cond_189

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v3, v4, :cond_189

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_129

    const/4 v2, 0x1

    :cond_129
    if-eqz v2, :cond_189

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    if-eqz v3, :cond_189

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[smart stay] UserActivityState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (face detected)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v6, v15

    add-long/2addr v4, v6

    int-to-long v6, v14

    sub-long v12, v4, v6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    :cond_189
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v3, :cond_21d

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_21d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v9, v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v3, :cond_21d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_21d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    int-to-long v4, v3

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    const-wide/16 v4, 0x1770

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    if-eqz v3, :cond_1fa

    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->isPreSmartStayNeeded(J)Z

    move-result v3

    if-eqz v3, :cond_1fa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    :cond_1fa
    invoke-direct/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->isSmartStayNeeded(J)Z

    move-result v3

    if-eqz v3, :cond_312

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    :cond_21d
    :goto_21d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v3, v4, :cond_2bd

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[s] UserActivityState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31d

    const-wide/16 v4, -0x1

    cmp-long v3, v12, v4

    if-nez v3, :cond_31d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v3

    if-eqz v3, :cond_31d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    :goto_272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_34f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34f

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set mNeedCheckAbuseWakelocks to true as mAbuseWakeLocks.size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_2b5
    :goto_2b5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    :cond_2bd
    return-void

    :cond_2be
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_2d4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_21d

    :cond_2db
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v6, v15

    add-long v12, v4, v6

    cmp-long v3, p1, v12

    if-gez v3, :cond_7d

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7d

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_7d

    :cond_2f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bb

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_bb

    :cond_309
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const-wide/16 v12, -0x1

    goto/16 :goto_e5

    :cond_312
    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "[smart stay] updateUserActivitySummaryLocked : don\'t have time to smart stay"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21d

    :cond_31d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_342

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_342

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_342

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    new-instance v4, Lcom/android/server/power/PowerManagerService$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_272

    :cond_342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_272

    :cond_34f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    if-eqz v3, :cond_2b5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2b5

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "set mNeedCheckAbuseWakelocks to true because there are disabled wake lock"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto/16 :goto_2b5
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .registers 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_30

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x1

    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_2c

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2c
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_29

    :cond_30
    if-eqz v0, :cond_3b

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3b
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_45

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_45

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->releaseAbuseWakelockLocked()V

    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_26
    :goto_26
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    :cond_28
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_e8

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v1, :cond_96

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_f6

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_45
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    if-eqz v3, :cond_26

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_26

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->acquireAbuseWakelockLocked()V

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    goto :goto_26

    :sswitch_55
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_42

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_60
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_42

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_6b
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_42

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_76
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_42

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_81
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_88
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :sswitch_8f
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_42

    :cond_96
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v3, v6, :cond_a0

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, -0xc1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_a0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_aa

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_be

    :cond_aa
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v3, :cond_be

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastGoToSleepReason:I

    if-ne v3, v7, :cond_be

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_be
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v6, :cond_cc

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastGoToSleepReason:I

    if-ne v3, v7, :cond_cc

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_cc
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_dc

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v5, :cond_e9

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_dc
    :goto_dc
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_e8

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :cond_e8
    return-void

    :cond_e9
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_dc

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_dc

    nop

    :sswitch_data_f6
    .sparse-switch
        0x1 -> :sswitch_55
        0x6 -> :sswitch_76
        0xa -> :sswitch_6b
        0x1a -> :sswitch_60
        0x20 -> :sswitch_81
        0x40 -> :sswitch_88
        0x80 -> :sswitch_8f
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 16

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    if-gez v9, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_54

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_2e

    :cond_54
    monitor-exit v10

    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 11

    const/16 v6, 0x3e8

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v1, v8, :cond_21

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    :cond_21
    :goto_21
    if-nez v0, :cond_c5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    :goto_25
    return v1

    :cond_26
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release wake lock: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_b9

    const-string/jumbo v1, "release stay on "

    :goto_50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_bd

    const-string/jumbo v1, "timeout "

    :goto_68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_c1

    const-string/jumbo v1, "prox pos "

    :goto_80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "(0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto/16 :goto_21

    :cond_b5
    const-string/jumbo v7, ""

    goto :goto_40

    :cond_b9
    const-string/jumbo v1, ""

    goto :goto_50

    :cond_bd
    const-string/jumbo v1, ""

    goto :goto_68

    :cond_c1
    const-string/jumbo v1, ""

    goto :goto_80

    :cond_c5
    move v1, v8

    goto/16 :goto_25
.end method

.method private updateWallPaperModeLocked()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInfinityWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsInfinityWallpaper:Z

    return-void
.end method

.method private userActivityFromNative(JII)V
    .registers 12

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_59

    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[api] userActivityFromNative : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_59

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    :cond_59
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 15

    const-wide/16 v6, -0x1

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_79

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_e

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_e
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] userActivityInternal PowerManager.USER_ACTIVITY_FLAG_INDIRECT : 2 (event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " eventTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastAndroidAutoBoostTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_79

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_5e

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_5e
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x76c

    cmp-long v1, v2, v4

    if-lez v1, :cond_79

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.ANDROID_AUTO_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_79
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p3, :cond_83

    const-wide/16 v4, -0x1

    :try_start_80
    invoke-direct {p0, v4, v5}, Lcom/android/server/power/PowerManagerService;->setNotiLightScreenTimeoutOverride(J)V

    :cond_83
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_8e

    :cond_8c
    monitor-exit v2

    return-void

    :catchall_8e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 15

    const/4 v7, 0x4

    const/4 v6, 0x2

    const-wide/32 v4, 0x20000

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    :cond_13
    return v2

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    const-string/jumbo v0, "userActivity"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_26
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_33

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    :cond_33
    if-ne p3, v7, :cond_53

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    :goto_3b
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_46
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_4c
    .catchall {:try_start_26 .. :try_end_4c} :catchall_59

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    :cond_4f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_59

    goto :goto_3b

    :catchall_59
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5e
    and-int/lit8 v0, p4, 0x2

    if-nez v0, :cond_4f

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    :try_start_66
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d1

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d1

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p3, v3, :cond_82

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_59

    :cond_82
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_86
    :try_start_86
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d1

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne p3, v3, :cond_9c

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_9c
    if-eq p3, v7, :cond_aa

    if-ne p3, v6, :cond_c3

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    if-eqz v0, :cond_c3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c3

    :cond_aa
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_b0
    :goto_b0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    if-lez v0, :cond_bf

    if-nez p3, :cond_bc

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_bf

    :cond_bc
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutLocked(J)V
    :try_end_bf
    .catchall {:try_start_86 .. :try_end_bf} :catchall_59

    :cond_bf
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_c3
    if-ne p3, v3, :cond_b0

    :try_start_c5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v0, :cond_b0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_59

    goto :goto_b0

    :cond_d1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v2
.end method

.method private verifiedCoverClosedLocked()Z
    .registers 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    packed-switch v0, :pswitch_data_a

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return v0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .registers 14

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    :cond_14
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_31

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_31

    :cond_25
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_31

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    :cond_31
    const/4 v1, 0x0

    return v1

    :cond_33
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!@[ps] Screen__On  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionDisabled:Z

    if-nez v1, :cond_9b

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v0, 0x1

    :cond_86
    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-virtual {v1, p5, p6}, Lcom/samsung/android/edge/EdgeManagerInternal;->showForWakeUp(Ljava/lang/String;I)Z

    move-result v0

    :cond_94
    if-eqz v0, :cond_9b

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v1, 0x1

    return v1

    :cond_9b
    const-string/jumbo v1, "Screen turning on"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v1, "wakeUp"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_ae
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v1, :pswitch_data_146

    :goto_b3
    :pswitch_b3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_f8

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v1, 0x1

    return v1

    :pswitch_d6
    :try_start_d6
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waking up from sleep (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_d6 .. :try_end_f7} :catchall_f8

    goto :goto_b3

    :catchall_f8
    move-exception v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    :pswitch_100
    :try_start_100
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waking up from dream (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :pswitch_122
    const-string/jumbo v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waking up from dozing (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_100 .. :try_end_143} :catchall_f8

    goto/16 :goto_b3

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_b3
        :pswitch_100
        :pswitch_122
    .end packed-switch
.end method

.method private wakeUpWithReasonInternal(JII)V
    .registers 14

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-direct {p0, p3}, Lcom/android/server/power/PowerManagerService;->getWakeUpReasonString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v8

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private writeDisplayOnTimetoEfs()V
    .registers 3

    const-string/jumbo v0, "/efs/afc/display_on_time"

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method checkForLongWakeLocks()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide/32 v18, 0xea60

    sub-long v14, v10, v18

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v7, :cond_64

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v17, 0xffff

    and-int v13, v13, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_52

    iget-boolean v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v13, :cond_52

    iget-boolean v13, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_52

    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    move-wide/from16 v18, v0

    cmp-long v13, v18, v14

    if-gez v13, :cond_55

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_52
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_55
    iget-wide v0, v12, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    add-long v4, v18, v20

    cmp-long v13, v4, v8

    if-gez v13, :cond_52

    move-wide v8, v4

    goto :goto_52

    :cond_64
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v13, v8, v18

    if-eqz v13, :cond_8b

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_94

    :goto_89
    monitor-exit v16

    return-void

    :cond_8b
    const-wide/16 v18, 0x0

    :try_start_8d
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_94

    goto :goto_89

    :catchall_94
    move-exception v13

    monitor-exit v16

    throw v13
.end method

.method dumpDebugLog()V
    .registers 4

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "dumpDebugLog +"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/PowerManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$18;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method finishUidChangesInternal()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getLastShutdownReasonInternal(Ljava/io/File;)I
    .registers 10

    const/4 v5, 0x0

    const-string/jumbo v3, ""

    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_35
    .catchall {:try_start_5 .. :try_end_f} :catchall_74

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_79
    .catchall {:try_start_f .. :try_end_12} :catchall_76

    move-result-object v3

    if-eqz v1, :cond_18

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_31
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1b

    :cond_18
    :goto_18
    if-eqz v5, :cond_33

    :try_start_1a
    throw v5
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v2

    move-object v0, v1

    :goto_1d
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "Failed to read last_reboot_reason file"

    invoke-static {v4, v5, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    const-string/jumbo v4, "shutdown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    const/4 v4, 0x1

    return v4

    :catch_31
    move-exception v5

    goto :goto_18

    :cond_33
    move-object v0, v1

    goto :goto_26

    :catch_35
    move-exception v4

    :goto_36
    :try_start_36
    throw v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3b
    if-eqz v0, :cond_40

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_45
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_43

    :cond_40
    :goto_40
    if-eqz v5, :cond_50

    :try_start_42
    throw v5

    :catch_43
    move-exception v2

    goto :goto_1d

    :catch_45
    move-exception v6

    if-nez v5, :cond_4a

    move-object v5, v6

    goto :goto_40

    :cond_4a
    if-eq v5, v6, :cond_40

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_40

    :cond_50
    throw v4
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_51} :catch_43

    :cond_51
    const-string/jumbo v4, "reboot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v4, 0x2

    return v4

    :cond_5c
    const-string/jumbo v4, "userrequested"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    const/4 v4, 0x3

    return v4

    :cond_67
    const-string/jumbo v4, "thermal-shutdown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x4

    return v4

    :cond_72
    const/4 v4, 0x0

    return v4

    :catchall_74
    move-exception v4

    goto :goto_3b

    :catchall_76
    move-exception v4

    move-object v0, v1

    goto :goto_3b

    :catch_79
    move-exception v4

    move-object v0, v1

    goto :goto_36
.end method

.method isDeviceIdleModeInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isLightDeviceIdleModeInternal()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public monitor()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public onBootPhase(I)V
    .registers 11

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const-string/jumbo v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[api] onBootPhase() phase= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/16 v1, 0x258

    if-ne p1, v1, :cond_29

    :try_start_24
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_b7

    :cond_27
    :goto_27
    monitor-exit v8

    return-void

    :cond_29
    if-ne p1, v6, :cond_27

    :try_start_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWallPaperModeLocked()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    const-string/jumbo v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Posting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " delayed runnables"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    array-length v5, v4

    move v1, v7

    :goto_79
    if-ge v1, v5, :cond_87

    aget-object v0, v4, v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompletedRunnables:[Ljava/lang/Runnable;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AFC:Z

    if-eqz v1, :cond_27

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readDisplayOnTimeFromEfs()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->initSentDisplayOnTimeIntent(I)V

    const-string/jumbo v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DisplayOnTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayOnTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_2b .. :try_end_b5} :catchall_b7

    goto/16 :goto_27

    :catchall_b7
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public onStart()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-void
.end method

.method setDeviceIdleModeInternal(Z)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-ne v0, p1, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_a
    :try_start_a
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1a

    monitor-exit v1

    if-eqz p1, :cond_1d

    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    :goto_18
    const/4 v0, 0x1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1d
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_18
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setLightDeviceIdleModeInternal(Z)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method startUidChangesInternal()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .registers 19

    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "[api] systemReady()"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    const/4 v2, 0x1

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v2, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-class v2, Landroid/os/BatteryManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const-class v2, Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/edge/EdgeManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    invoke-virtual {v12}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v12}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v12}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v12}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForVrSettingDefault:I

    invoke-virtual {v12}, Landroid/os/PowerManager;->getMaximumScreenBrightnessExtended()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    new-instance v14, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v14, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const/4 v2, 0x5

    invoke-virtual {v14, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_5f2

    const/4 v2, 0x1

    :goto_ad
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "NotifierInSeperateThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/power/Notifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string/jumbo v7, "PowerManagerService.Broadcasts"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    new-instance v2, Lcom/android/server/power/WirelessChargerDetector;

    const-string/jumbo v3, "PowerManagerService.WirelessChargerDetector"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v2, v14, v3, v4}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const-class v2, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_148

    new-instance v2, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    :cond_148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsDualScreenFolder:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->isFamilyConnectedInstalled(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v3, v4, v14}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_1d4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start : (mWirelessChargerSContextManager != null - mIsWirelessChargerSContextEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    if-eqz v2, :cond_1f8

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_5f5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    :cond_1f8
    :goto_1f8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v2, v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_20b
    .catchall {:try_start_11 .. :try_end_20b} :catchall_600

    monitor-exit v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "HqmManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v2, :cond_25f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_25f

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.server.power.LOGGING"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_25f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v2, v13}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v2, v13}, Lcom/android/server/power/BatterySaverPolicy;->start(Landroid/content/ContentResolver;)V

    const-string/jumbo v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_activate_on_sleep"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_activate_on_dock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sleep_timeout"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_brightness_for_vr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "doze_always_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "double_tap_to_wake"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "button_key_light"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.folder_type"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_3ae

    const-string/jumbo v2, "key_backlight_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "key_night_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3ae
    const-string/jumbo v2, "auto_brightness_detail"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "auto_brightness_limit"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    if-eqz v2, :cond_402

    const-string/jumbo v2, "sem_perfomance_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_402
    const-string/jumbo v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    if-eqz v2, :cond_438

    const-string/jumbo v2, "is_secured_lock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "lock_screen_lock_after_timeout"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_438
    const-string/jumbo v2, "user_activity_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "display_outdoor_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "wakeup_prevention"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "wakeup_prevention_packages"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "game_autobrightness_lock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v13, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "vrmanager"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Landroid/service/vr/IVrManager;

    if-eqz v15, :cond_49c

    :try_start_495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v15, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_49c
    .catch Landroid/os/RemoteException; {:try_start_495 .. :try_end_49c} :catch_603

    :cond_49c
    :goto_49c
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BatteryReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DreamReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    if-eqz v2, :cond_55f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "ResponseAxT9Info"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_55f
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.server.power.LOGGING"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$WallpaperReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$WallpaperReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WallpaperReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$ShutdownReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$ShutdownReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ShutdownReceiver;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.USER_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.action.NO_USER_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntentLegacy:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.action.USER_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntentLegacy:Landroid/content/Intent;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return-void

    :cond_5f2
    const/4 v2, 0x0

    goto/16 :goto_ad

    :cond_5f5
    :try_start_5f5
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "mCoverManager is null!!!!"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5fe
    .catchall {:try_start_5f5 .. :try_end_5fe} :catchall_600

    goto/16 :goto_1f8

    :catchall_600
    move-exception v2

    monitor-exit v16

    throw v2

    :catch_603
    move-exception v9

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49c
.end method

.method public timeSinceScreenWasLastOn()J
    .registers 7

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    if-eqz v0, :cond_d

    const-wide/16 v2, 0x0

    monitor-exit v1

    return-wide v2

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_16

    sub-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method uidActiveInternal(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v0, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v1, 0x11

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v1, :cond_25

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v2

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method uidGoneInternal(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2a

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    const/16 v2, 0x12

    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_2a

    iget v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v2, :cond_2a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit v3

    return-void

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method uidIdleInternal(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    iget v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v1, :cond_17

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v2

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateLidState(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eq v0, p1, :cond_2d

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[api] updateLidState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updatePowerRequestFromBatterySaverPolicy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget v1, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    return-void
.end method

.method updateUidProcStateInternal(II)V
    .registers 9

    const/16 v5, 0xc

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    iget v4, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-gt v4, v5, :cond_2e

    const/4 v0, 0x1

    :goto_1f
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget v4, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v4, :cond_2c

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_30

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3d

    :cond_2c
    :goto_2c
    monitor-exit v3

    return-void

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_30
    :try_start_30
    iget-boolean v4, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v4, :cond_2c

    if-gt p2, v5, :cond_37

    const/4 v2, 0x1

    :cond_37
    if-eq v0, v2, :cond_2c

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3d

    goto :goto_2c

    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2
.end method
