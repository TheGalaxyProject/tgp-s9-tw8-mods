.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;

.field private static sIsSupportNightClock:Z


# instance fields
.field private ROUTE_TYPE_REMOTE_DISPLAY:I

.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mDeviceAssistantApp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDock:Landroid/support/v7/preference/SecPreference;

.field private mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

.field private mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMediaRouterManager:Landroid/media/MediaRouter;

.field private mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPanicMode:Landroid/support/v7/preference/SecPreference;

.field private mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

.field private mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

.field private mQuickCameraObserver:Landroid/database/ContentObserver;

.field private mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSpen:Landroid/support/v7/preference/SecPreference;

.field private mSwipeToCallObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportGame(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Z
    .registers 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6()I
    .registers 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pick_up_to_call_out_switch"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "pick_up_switch"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "palm_swipe_switch"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private appLockSummaryUpdate()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b7d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_17
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "DeviceOwner"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SMART_SWITCH"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string/jumbo v3, "setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    if-eqz v0, :cond_56

    :cond_4b
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "SS is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_56
    const/4 v3, 0x1

    return v3
.end method

.method private dismissAllDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_c
    return-void
.end method

.method private static getSummaryForMutePauseSwitch()I
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    :cond_13
    const v0, 0x7f121229

    :goto_16
    return v0

    :cond_17
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    const v0, 0x7f121227

    goto :goto_16

    :cond_25
    const v0, 0x7f121228

    goto :goto_16
.end method

.method private isHdmiConnected()Z
    .registers 6

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    array-length v3, v0

    if-ge v1, v3, :cond_29

    aget-object v3, v0, v1

    if-eqz v3, :cond_26

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    const/4 v2, 0x1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    return v2
.end method

.method private static isHongbaoAssistantEnabled(Landroid/content/Context;)Z
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "hongbao_assistant"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "com.samsung.hongbaoassistant"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    return v0

    :cond_3b
    return v3
.end method

.method private static isNotSupportGame(Landroid/content/Context;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v0, :cond_14

    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1

    :cond_14
    :try_start_14
    const-string/jumbo v5, "com.samsung.android.game.gamehome"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1e} :catch_24

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_13

    const/4 v1, 0x1

    goto :goto_13

    :catch_24
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v5, "Usefulfeature"

    const-string/jumbo v6, "Package : com.samsung.android.game.gamehome not found"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_13
.end method

.method private static isNotSupportSamsungMessageApp()Z
    .registers 2

    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .registers 16

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v9

    sget-object v12, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_43

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_da

    const/4 v4, 0x1

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_dd

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_navbar_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_df

    const/4 v5, 0x1

    :goto_60
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e1

    const/4 v6, 0x1

    :goto_70
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_e3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    :goto_82
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "access_control_use"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e5

    const/4 v0, 0x1

    :goto_92
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e7

    const/4 v1, 0x1

    :goto_a2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e9

    const/4 v3, 0x1

    :goto_b2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_eb

    const/4 v2, 0x1

    :goto_c2
    if-nez v8, :cond_d8

    if-nez v9, :cond_d8

    if-nez v10, :cond_d8

    if-nez v4, :cond_d8

    if-nez v5, :cond_d8

    if-nez v6, :cond_d8

    if-nez v11, :cond_d8

    if-nez v0, :cond_d8

    if-nez v1, :cond_d8

    if-nez v2, :cond_d8

    if-eqz v3, :cond_d9

    :cond_d8
    const/4 v7, 0x0

    :cond_d9
    return v7

    :cond_da
    const/4 v4, 0x0

    goto/16 :goto_43

    :cond_dd
    const/4 v5, 0x1

    goto :goto_60

    :cond_df
    const/4 v5, 0x0

    goto :goto_60

    :cond_e1
    const/4 v6, 0x0

    goto :goto_70

    :cond_e3
    const/4 v11, 0x0

    goto :goto_82

    :cond_e5
    const/4 v0, 0x0

    goto :goto_92

    :cond_e7
    const/4 v1, 0x0

    goto :goto_a2

    :cond_e9
    const/4 v3, 0x0

    goto :goto_b2

    :cond_eb
    const/4 v2, 0x0

    goto :goto_c2
.end method

.method private isSmartMirroringConnected()Z
    .registers 5

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_router"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static isSupportMCC()Z
    .registers 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_2d

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private static isSupportSmartCall(Landroid/content/Context;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6f

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v5

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "com.samsung.android.smartcallprovider"

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    array-length v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6f

    const-string/jumbo v6, "off"

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string/jumbo v6, "off"

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_68

    :cond_4c
    const-string/jumbo v6, "whowho"

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string/jumbo v6, "whowho"

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :cond_68
    :goto_68
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6f

    return v3

    :cond_6d
    move v4, v5

    goto :goto_68

    :cond_6f
    return v5
.end method

.method private static mFingerSensorGestureSupport(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private static mSupportSpay(Landroid/content/Context;)Z
    .registers 9

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.spay.quickgesture"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Samsung Pay supports finger gesture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_32} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_32} :catch_33

    :goto_32
    return v4

    :catch_33
    move-exception v3

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_53
    move-exception v2

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const v6, 0x7f121b7b

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_8
    const-string/jumbo v4, "com.samsung.android.messaging"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_f} :catch_2b

    move-result-object v1

    :goto_10
    const-string/jumbo v3, ""

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_SUPPORT_ORC"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2a
    return-object v3

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v4, "Usefulfeature"

    const-string/jumbo v5, "Package : com.samsung.android.messaging"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_39
    const v4, 0x7f121b79

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_41
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_4c
    if-eqz v1, :cond_5d

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x1dcd6500

    if-lt v4, v5, :cond_5d

    const v4, 0x7f121b7a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_5d
    const v4, 0x7f121b78

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a
.end method

.method private makeOneHandOperationDisablePopup()V
    .registers 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1213ef

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    sget-object v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_3e

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120068

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5b

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12082e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8e

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120830

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120096

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ba
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120831

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10a

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120040

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12d

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12024a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12d
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120839

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f120082

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f12004a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f0d001e

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f0a0256

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0a0257

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1213ee

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const v4, 0x7f120e15

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f121c55

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1205a0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    const v6, 0x7f121c4f

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_7e
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f121428

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method

.method private maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const v8, 0x7f1200ac

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const v3, 0x7f120e15

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    :goto_1a
    const v3, 0x7f121c55

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1205a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    const v5, 0x7f121c4f

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_81
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const v3, 0x7f121428

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private quickCameraDisablePopup()V
    .registers 10

    const v8, 0x7f120f81

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const v3, 0x7f121c55

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1205a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f1215a6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f121c4f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_11
    return-void
.end method

.method private setLinkedDataView()V
    .registers 13

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_101

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v9, :cond_101

    new-instance v9, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.sec.android.easyMover"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_78

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_78

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :try_start_38
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.sec.android.easyMover"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_102

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2333

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v6, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_5b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_38 .. :try_end_5b} :catch_127

    :goto_5b
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v10, 0x7f1219d5

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v9

    if-eqz v9, :cond_136

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v9

    :goto_6e
    if-nez v9, :cond_78

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const/4 v0, 0x1

    :cond_78
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e1

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.android.settings"

    const-string/jumbo v10, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2334

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v10, 0x7f120903

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sem_perfomance_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v9

    if-eqz v9, :cond_c8

    const/4 v9, 0x1

    if-eq v5, v9, :cond_e1

    :cond_c8
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v9

    if-eqz v9, :cond_d4

    sget-object v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    :cond_d4
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_e1

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_e1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v8, v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_139

    :cond_f8
    iput-object v11, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :goto_fa
    if-lez v0, :cond_101

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_101
    return-void

    :cond_102
    :try_start_102
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2333

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_125
    .catch Landroid/content/ActivityNotFoundException; {:try_start_102 .. :try_end_125} :catch_127

    goto/16 :goto_5b

    :catch_127
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v9, "Usefulfeature"

    const-string/jumbo v10, "not found activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    :cond_136
    move v9, v8

    goto/16 :goto_6e

    :cond_139
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v8

    if-eqz v8, :cond_145

    sget-boolean v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_f8

    :cond_145
    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "-nightclock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_188

    const-string/jumbo v8, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_160
    const-string/jumbo v8, "flowId"

    const/16 v9, 0x1078

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v9, 0x7f12130e

    iput v9, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_fa

    :cond_188
    const-string/jumbo v8, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_160
.end method

.method private setOneHandOperation(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-ne p1, v5, :cond_4e

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_50

    const/4 v1, 0x1

    :goto_1d
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_56

    if-eqz v1, :cond_52

    const v2, 0x7f1213f7

    :goto_30
    invoke-virtual {v4, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b039b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_5a

    const/16 v2, 0x3e8

    :goto_46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_4e
    const/4 v0, 0x0

    goto :goto_5

    :cond_50
    const/4 v1, 0x0

    goto :goto_1d

    :cond_52
    const v2, 0x7f1213fb

    goto :goto_30

    :cond_56
    const v2, 0x7f1213ec

    goto :goto_30

    :cond_5a
    move v2, v3

    goto :goto_46
.end method

.method public static setSupportMccSmartCall()V
    .registers 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_31

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_31

    aget-object v2, v0, v4

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    :cond_31
    return-void
.end method

.method private setVideoEnhancerPreference()V
    .registers 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hdr_effect"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_50

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHdmiConnected()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSmartMirroringConnected()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_52

    :cond_31
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_37
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v1, :cond_94

    const v3, 0x7f121b7e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4c
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_50
    const/4 v1, 0x0

    goto :goto_10

    :cond_52
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_89

    const/4 v3, 0x2

    if-ne v2, v3, :cond_89

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pbm_video_enhancer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_87

    const/4 v0, 0x1

    :goto_6e
    move v1, v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f12050f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120ce0

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto :goto_37

    :cond_87
    const/4 v0, 0x0

    goto :goto_6e

    :cond_89
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_37

    :cond_94
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_4c
.end method

.method private smartCaptureDisablePopup()V
    .registers 9

    const v7, 0x7f120068

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f121c55

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1205a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f1219ce

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121c4f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x10fe

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10

    const v1, 0x7f121b7e

    const v3, 0x7f121b7d

    const v2, 0x7f121b77

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v7, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_34

    :cond_3b
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "surface_palm_swipe"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_66

    const/4 v0, 0x1

    :goto_4e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_68

    :goto_62
    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_34

    :cond_66
    const/4 v0, 0x0

    goto :goto_4e

    :cond_68
    move v1, v2

    goto :goto_62

    :cond_6a
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_72

    :goto_6e
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_34

    :cond_72
    move v1, v3

    goto :goto_6e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 23

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v17, 0x7f150126

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v17

    if-eqz v17, :cond_40

    const-string/jumbo v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_40
    const-string/jumbo v17, "com.samsung.settings.action.talkback_toggled"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    const-string/jumbo v17, "pen_settings_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/support/v7/preference/SecPreference;

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_94

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_94

    const-string/jumbo v17, "pen_settings_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_94
    const-string/jumbo v17, "dock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v17, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v17

    if-eqz v17, :cond_ca

    const-string/jumbo v17, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_ea
    const-string/jumbo v17, "game_home"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_112
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v15

    if-eqz v15, :cond_148

    invoke-virtual {v15}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v17

    if-eqz v17, :cond_148

    const-string/jumbo v17, "dual_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_148
    const-string/jumbo v17, "display_airmessage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_188
    const-string/jumbo v17, "key_festival_effect"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1bb
    const-string/jumbo v17, "call_message_spam_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1ee
    const-string/jumbo v17, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_221

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_221
    const-string/jumbo v17, "quick_camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_249

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_249
    const-string/jumbo v17, "quick_camera_launch_power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_271

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_271
    const-string/jumbo v17, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDeviceAssistantApp:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v17, "pick_up_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2b7
    const-string/jumbo v17, "pick_up_to_call_out_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2ea
    const-string/jumbo v17, "screen_recorder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_312

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_312
    const-string/jumbo v17, "smart_capture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_345

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_345
    const-string/jumbo v17, "merged_mute_or_pause_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_378

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_378
    const-string/jumbo v17, "palm_swipe_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3ab
    const-string/jumbo v17, "multi_window_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v17

    sput-boolean v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    sget-boolean v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v17, :cond_888

    const-string/jumbo v17, "hongbao_assistant"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_410

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_3f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_410
    :goto_410
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_894

    const-string/jumbo v17, "galaxy_labs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_420
    :goto_420
    const-string/jumbo v17, "key_applock"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_454

    const-string/jumbo v17, "applock"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8c9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    :goto_448
    if-nez v17, :cond_8cd

    const-string/jumbo v17, "key_applock"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_454
    :goto_454
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v17

    if-eqz v17, :cond_8e7

    const-string/jumbo v17, "key_safety_assistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_464
    const-string/jumbo v17, "key_safety_assistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_489

    const-string/jumbo v17, "key_safety_assistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_4a9
    const-string/jumbo v17, "key_panic_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v18, v0

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8f3

    const v17, 0x7f12142b

    :goto_4d5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_4dc
    const-string/jumbo v17, "safetycare_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_502

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_502
    const-string/jumbo v17, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_515

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_51f

    :cond_515
    const-string/jumbo v17, "safetycare_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    :cond_51f
    const-string/jumbo v17, "hdr_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_547

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_547
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v17

    const-string/jumbo v18, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "Galaxy Note7"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8f8

    const v17, 0x7f120ce2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_568
    const-string/jumbo v17, "direct_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_59d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_907

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_907

    const-string/jumbo v17, "direct_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_59d
    :goto_59d
    const-string/jumbo v17, "increse_touch_sensetivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5f8

    const v17, 0x7f120de0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const v19, 0x7f12177d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5f8
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v17, "quick_dial"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_63c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_63c
    const-string/jumbo v17, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_66f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_66f
    const-string/jumbo v17, "finger_sensor_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6a2
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120096

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_921

    const-string/jumbo v17, "quick_camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_6bb
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v17

    if-eqz v17, :cond_6cb

    const-string/jumbo v17, "quick_camera_launch_power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_6cb
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_6dd

    const-string/jumbo v17, "finger_sensor_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_6dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_6f2

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v18, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6fc

    :cond_6f2
    const-string/jumbo v17, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_6fc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.quickassist"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_717

    const-string/jumbo v17, "quick_dial"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_717
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.game.gametools"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_744

    if-nez v10, :cond_744

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportGame(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_74e

    :cond_744
    const-string/jumbo v17, "game_home"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_74e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_75c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_76b

    :cond_75c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_775

    :cond_76b
    const-string/jumbo v17, "display_airmessage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_775
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_794

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "com.samsung.android.myeventcenter"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_794

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v17

    if-eqz v17, :cond_79e

    :cond_794
    const-string/jumbo v17, "key_festival_effect"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_79e
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_7c0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "SMARTMANAGER"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_7c0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-eqz v17, :cond_7ca

    :cond_7c0
    const-string/jumbo v17, "call_message_spam_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_7ca
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v17

    if-nez v17, :cond_7d2

    if-eqz v9, :cond_7dc

    :cond_7d2
    const-string/jumbo v17, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_7dc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "double_tab_launch_component"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    const-string/jumbo v17, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    sget-object v18, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7fe

    const-string/jumbo v17, "quick_camera_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_7fe
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-eqz v17, :cond_812

    const-string/jumbo v17, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_812
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.scrollcapture"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_840

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.smartcapture"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_840

    const-string/jumbo v17, "smart_capture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_840
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.sec.app.screenrecorder"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_859

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_863

    :cond_859
    const-string/jumbo v17, "screen_recorder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_863
    sget-object v18, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_86c
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_937

    aget-object v14, v18, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_885

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_885
    add-int/lit8 v17, v17, 0x1

    goto :goto_86c

    :cond_888
    const-string/jumbo v17, "hongbao_assistant"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_410

    :cond_894
    const-string/jumbo v17, "galaxy_labs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_420

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_420

    :cond_8c9
    const/16 v17, 0x0

    goto/16 :goto_448

    :cond_8cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_454

    :cond_8e7
    const-string/jumbo v17, "key_panic_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_464

    :cond_8f3
    const v17, 0x7f12142c

    goto/16 :goto_4d5

    :cond_8f8
    const v17, 0x7f120ce1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_568

    :cond_907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_59d

    :cond_921
    const-string/jumbo v17, "quick_camera_launch_power"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6bb

    :cond_937
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_961

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v13, v5

    const/4 v8, 0x0

    :goto_953
    if-ge v8, v13, :cond_961

    aget-object v17, v5, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_953

    :cond_961
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.galaxylabs"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_974

    if-eqz v9, :cond_97e

    :cond_974
    const-string/jumbo v17, "galaxy_labs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_97e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-nez v17, :cond_98c

    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9f3

    :cond_98c
    const-string/jumbo v17, "galaxy_labs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_996
    sget-object v17, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_9a8

    const-string/jumbo v17, "dock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_9a8
    if-eqz v15, :cond_9b2

    invoke-virtual {v15}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_9b4

    :cond_9b2
    if-nez v15, :cond_9be

    :cond_9b4
    const-string/jumbo v17, "dual_app"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_9be
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v17

    if-nez v17, :cond_a31

    const-string/jumbo v17, "active_key_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_9ce
    :goto_9ce
    const/4 v12, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v11

    if-eqz v11, :cond_9d9

    invoke-virtual {v11}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v12

    :cond_9d9
    and-int/lit8 v17, v12, 0x8

    if-eqz v17, :cond_9e7

    const-string/jumbo v17, "multi_window_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_9e7
    new-instance v17, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_9f3
    const-string/jumbo v17, "pen_settings_title"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "dock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "key_panic_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "key_safety_assistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v17, "safetycare_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_996

    :cond_a31
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v17

    if-eqz v17, :cond_9ce

    const-string/jumbo v17, "active_key_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    const v18, 0x7f122242

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    goto :goto_9ce
.end method

.method public onDestroy()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "Usefulfeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_e1

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2e
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_50
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_72
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_83
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_94
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_c7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_c7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AdvancedFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_e1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_2e

    goto/16 :goto_25
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 20

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1ec

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_203

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1ef

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x3e8

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b041c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_200

    const/16 v13, 0x3e8

    :goto_68
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_6f
    :goto_6f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "quick_dial"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v14, v15, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.action.quickdial"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "status"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0001

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_997

    const/16 v13, 0x3e8

    :goto_dd
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_e4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_135

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "auto_adjust_touch"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_99a

    const/4 v13, 0x1

    :goto_111
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v15, 0x7f0b0000

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_99d

    const/16 v13, 0x3e8

    :goto_12e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "swipe_to_call_message"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_183

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9a0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    const v14, 0x7f121b7e

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_183
    :goto_183
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0004

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9b1

    const/16 v13, 0x3e8

    :goto_19e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ea

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "fingerprint_gesture_quick"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_1ea

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v10, ""

    if-eqz v6, :cond_9b4

    const v13, 0x7f121b7e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_1d5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1ea
    const/4 v13, 0x1

    return v13

    :cond_1ec
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_1ef
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_49

    :cond_200
    const/4 v13, 0x0

    goto/16 :goto_68

    :cond_203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2aa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_28c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "lcd_curtain"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_270

    const/4 v13, 0x1

    if-le v11, v13, :cond_270

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->quickCameraDisablePopup()V

    :goto_248
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b041c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2a8

    const/16 v13, 0x3e8

    :goto_267
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_270
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x3e8

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    add-int/lit8 v15, v11, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_248

    :cond_28c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    add-int/lit8 v15, v11, -0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_248

    :cond_2a8
    const/4 v13, 0x0

    goto :goto_267

    :cond_2aa
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_345

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_32c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_31c

    const v13, 0x7f121b7e

    :goto_2eb
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b047c

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_32a

    const/16 v13, 0x3e8

    :goto_309
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_310
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_pick_up"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6f

    :cond_31c
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v13

    if-eqz v13, :cond_326

    const v13, 0x7f121497

    goto :goto_2eb

    :cond_326
    const v13, 0x7f121496

    goto :goto_2eb

    :cond_32a
    const/4 v13, 0x0

    goto :goto_309

    :cond_32c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_341

    const v13, 0x7f121b7e

    :goto_33d
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_310

    :cond_341
    const v13, 0x7f121b7d

    goto :goto_33d

    :cond_345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3c7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3b7

    const v13, 0x7f121b7e

    :goto_386
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b019e

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3c5

    const/16 v13, 0x3e8

    :goto_3a4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_3ab
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_pick_up_to_call_out"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6f

    :cond_3b7
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v13

    if-eqz v13, :cond_3c1

    const v13, 0x7f12149a

    goto :goto_386

    :cond_3c1
    const v13, 0x7f121499

    goto :goto_386

    :cond_3c5
    const/4 v13, 0x0

    goto :goto_3a4

    :cond_3c7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3dc

    const v13, 0x7f121b7e

    :goto_3d8
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_3ab

    :cond_3dc
    const v13, 0x7f121b7d

    goto :goto_3d8

    :cond_3e0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_496

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_47d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_476

    const v13, 0x7f121b7e

    :goto_421
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b01f3

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_47b

    const/16 v13, 0x3e8

    :goto_43f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_merged_mute_pause"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_460

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_overturn"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_460
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v14, 0x200000

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "surface_palm_touch"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6f

    :cond_476
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v13

    goto :goto_421

    :cond_47b
    const/4 v13, 0x0

    goto :goto_43f

    :cond_47d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_492

    const v13, 0x7f121b7e

    :goto_48e
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_446

    :cond_492
    const v13, 0x7f121b7d

    goto :goto_48e

    :cond_496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56a

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4cc

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4cc

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4cc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_6f

    :cond_4cc
    const/4 v13, 0x1

    if-ne v12, v13, :cond_4e4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4e4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_6f

    :cond_4e4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "surface_palm_swipe"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_550

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_54a

    const v13, 0x7f121b7e

    :goto_523
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b03c4

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_54e

    const/16 v13, 0x3e8

    :goto_541
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_54a
    const v13, 0x7f121b77

    goto :goto_523

    :cond_54e
    const/4 v13, 0x0

    goto :goto_541

    :cond_550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_566

    const v13, 0x7f121b7e

    :goto_561
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6f

    :cond_566
    const v13, 0x7f121b7d

    goto :goto_561

    :cond_56a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_619

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "finger_magnifier"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_593

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_593

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_6f

    :cond_593
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "enable_smart_capture"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_5ff

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5f9

    const v13, 0x7f121b7e

    :goto_5d2
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b047f

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5fd

    const/16 v13, 0x3e8

    :goto_5f0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_5f9
    const v13, 0x7f1219c6

    goto :goto_5d2

    :cond_5fd
    const/4 v13, 0x0

    goto :goto_5f0

    :cond_5ff
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_615

    const v13, 0x7f121b7e

    :goto_610
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6f

    :cond_615
    const v13, 0x7f121b7d

    goto :goto_610

    :cond_619
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_685

    const v13, 0x7f121b7e

    :goto_654
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "direct_share"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b01a1

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_689

    const/16 v13, 0x3e8

    :goto_67c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_685
    const v13, 0x7f12083d

    goto :goto_654

    :cond_689
    const/4 v13, 0x0

    goto :goto_67c

    :cond_68b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_73f

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6c1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6c1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6c1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_6f

    :cond_6c1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_6d9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6d9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_6f

    :cond_6d9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "intelligent_sleep_mode"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_739

    const v13, 0x7f121b7e

    :goto_712
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0483

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_73d

    const/16 v13, 0x3e8

    :goto_730
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_739
    const v13, 0x7f1219d2

    goto :goto_712

    :cond_73d
    const/4 v13, 0x0

    goto :goto_730

    :cond_73f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b9

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7b2

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_76a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v13, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_76a

    const/4 v1, 0x0

    :cond_76a
    if-nez v1, :cond_7a0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v15, "any_screen_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_79e

    const/4 v13, 0x1

    :goto_782
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1213ed

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    const/4 v13, 0x0

    return v13

    :cond_79e
    const/4 v13, 0x0

    goto :goto_782

    :cond_7a0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isReadyOneHandedOperationStatusEnable()Z

    move-result v13

    if-nez v13, :cond_7ab

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeOneHandOperationDisablePopup()V

    goto/16 :goto_6f

    :cond_7ab
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_6f

    :cond_7b2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_6f

    :cond_7b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_807

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_7fe

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7fa

    const v13, 0x7f121b7e

    :goto_7eb
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_7ee
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "airmessage_on"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6f

    :cond_7fa
    const v13, 0x7f120124

    goto :goto_7eb

    :cond_7fe
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7ee

    :cond_807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_87e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hdr_effect"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_879

    const v13, 0x7f121b7e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_852
    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0273

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_87c

    const/16 v13, 0x3e8

    :goto_870
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_6f

    :cond_879
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_852

    :cond_87c
    const/4 v13, 0x0

    goto :goto_870

    :cond_87e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "red_packet_do_not_show"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_905

    const/4 v9, 0x1

    :goto_89d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hongbao_assistant"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_907

    const/4 v3, 0x1

    :goto_8b0
    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v13, "Usefulfeature"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onPreferenceChange  showDialog:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " isChecked:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " enabled:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v6, :cond_98c

    if-eqz v6, :cond_909

    if-eqz v9, :cond_909

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.hongbaoassistant"

    const-string/jumbo v14, "com.samsung.hongbaoassistant.ConfirmActivity"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v13, 0x0

    return v13

    :cond_905
    const/4 v9, 0x0

    goto :goto_89d

    :cond_907
    const/4 v3, 0x0

    goto :goto_8b0

    :cond_909
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "hongbao_assistant"

    if-eqz v6, :cond_97e

    const/4 v13, 0x1

    :goto_917
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "red_packet_mode"

    if-eqz v6, :cond_980

    const/4 v13, 0x1

    :goto_928
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.hongbaoassistant"

    const-string/jumbo v14, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_982

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_942
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0090

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0091

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "screen_id"

    invoke-virtual {v7, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "event_id"

    invoke-virtual {v7, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v14, "value_int"

    if-eqz v6, :cond_98a

    const/4 v13, 0x1

    :goto_972
    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6f

    :cond_97e
    const/4 v13, 0x0

    goto :goto_917

    :cond_980
    const/4 v13, 0x0

    goto :goto_928

    :cond_982
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_942

    :cond_98a
    const/4 v13, 0x0

    goto :goto_972

    :cond_98c
    const-string/jumbo v13, "Usefulfeature"

    const-string/jumbo v14, "Changed form Quick Button."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    :cond_997
    const/4 v13, 0x0

    goto/16 :goto_dd

    :cond_99a
    const/4 v13, 0x0

    goto/16 :goto_111

    :cond_99d
    const/4 v13, 0x0

    goto/16 :goto_12e

    :cond_9a0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_183

    :cond_9b1
    const/4 v13, 0x0

    goto/16 :goto_19e

    :cond_9b4
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_9c7

    const v13, 0x7f120b20

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1d5

    :cond_9c7
    const v13, 0x7f120b21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1d5
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :try_start_8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_29} :catch_2b

    :cond_29
    :goto_29
    const/4 v3, 0x1

    return v3

    :catch_2b
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GameHome"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_29

    :cond_39
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    :try_start_41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.da.daagent"

    const-string/jumbo v4, "com.samsung.android.da.daagent.activity.DualAppActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_52
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_29

    :catch_53
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in DualApp"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_29

    :cond_61
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    :try_start_69
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.bst.airmessage"

    const-string/jumbo v5, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_91

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_92

    :cond_91
    const/4 v2, 0x0

    :cond_92
    const-string/jumbo v3, "S View cover attached"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_9b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_9b} :catch_9c

    goto :goto_29

    :catch_9c
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_29

    :cond_aa
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    :try_start_b2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.myeventcenter.MY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_c1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b2 .. :try_end_c1} :catch_c3

    goto/16 :goto_29

    :catch_c3
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29

    :cond_d2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    :try_start_da
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.firewall"

    const-string/jumbo v4, "com.sec.android.app.firewall.spamfilter.SpamFilterSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_f1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_da .. :try_end_f1} :catch_f3

    goto/16 :goto_29

    :catch_f3
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in CalMsgSpamFiter"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29

    :cond_102
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    :try_start_10a
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_11b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10a .. :try_end_11b} :catch_11d

    goto/16 :goto_29

    :catch_11d
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in ScreenRecorder"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29

    :cond_12c
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0400

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.safetyassurance"

    const-string/jumbo v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_15d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_146 .. :try_end_15d} :catch_15f

    goto/16 :goto_29

    :catch_15f
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in SendSOSMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29

    :cond_16e
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19e

    :try_start_176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.galaxylabs"

    const-string/jumbo v4, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_18d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_176 .. :try_end_18d} :catch_18f

    goto/16 :goto_29

    :catch_18f
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29

    :cond_19e
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f120ffe

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_29

    :cond_1c1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.applock"

    const-string/jumbo v4, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_29

    :cond_1da
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    :try_start_1e2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.hongbaoassistant"

    const-string/jumbo v4, "com.samsung.hongbaoassistant.settings.HongbaoAssistantActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1f9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e2 .. :try_end_1f9} :catch_1fb

    goto/16 :goto_29

    :catch_1fb
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in HongbaoAssistant"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_29
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    :cond_12
    const-string/jumbo v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const v3, 0x7f120cde

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 32

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v27, "false"

    const/16 v28, 0x0

    aput-object v27, v23, v28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v29, "isScreenCaptureEnabled"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_40

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_40

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "access_control_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "current_sec_theme_package_festival_enabled"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_79c

    const v27, 0x7f121b7e

    :goto_81
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "spam_filter_enable"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_7a1

    const v27, 0x7f121b7e

    :goto_ae
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "spam_filter_enable"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_105

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_7aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "double_tab_launch"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_7a6

    const/16 v27, 0x1

    :goto_fe
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_105
    :goto_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_168

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_7c5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "double_tab_launch"

    const/16 v29, 0x3

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    rem-int/lit8 v27, v5, 0x2

    if-eqz v27, :cond_7c2

    const/4 v4, 0x1

    :goto_125
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_13f

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_13f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "double_tab_launch"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_168
    :goto_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b7

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_7f9

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_7f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_7eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_7dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121497

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_1b7
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_206

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_8ed

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_8ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_8df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_8d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f12149a

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_206
    :goto_206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_250

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_9d3

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_9d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_9c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_250
    :goto_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2c4

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_a97

    const-string/jumbo v27, "Usefulfeature"

    const-string/jumbo v28, "MDM: Screen Capture Disabled"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_a89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b77

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_29a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2a6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_32b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "enable_smart_capture"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_b57

    const/16 v20, 0x1

    :goto_2dd
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_b5b

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_b5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f1219c6

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_30d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "enable_smart_capture"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_32b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b8d

    :cond_33b
    :goto_33b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "access_control_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v0, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_ba7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b77

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3b5
    :goto_3b5
    sget-boolean v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v27, :cond_40c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_40c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hongbao_assistant"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bb5

    const/4 v12, 0x1

    :goto_3d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v12, :cond_bb8

    const v27, 0x7f121b7e

    :goto_3e7
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hongbao_assistant"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_40c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_439

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "app_lock_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_482

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "send_emergency_message"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bbd

    const/16 v19, 0x1

    :goto_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v28, v0

    if-eqz v19, :cond_bc1

    const v27, 0x7f121b7e

    :goto_45d
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "send_emergency_message"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4c2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "direct_share"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bc6

    const/4 v10, 0x1

    :goto_49a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v10, :cond_bc9

    const v27, 0x7f121b7e

    :goto_4bb
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_4c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_540

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "intelligent_sleep_mode"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bce

    const/16 v24, 0x1

    :goto_4db
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_4f6

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_4f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/16 v24, 0x0

    :cond_4f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v24, :cond_bd2

    const v27, 0x7f121b7e

    :goto_51b
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "intelligent_sleep_mode"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5ca

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "any_screen_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bd7

    const/4 v7, 0x1

    :goto_558
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "one_handed_op_wakeup_type"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bda

    const/4 v8, 0x1

    :goto_568
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_bdd

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_bdd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v7, 0x0

    :goto_582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v7, :cond_bef

    if-eqz v8, :cond_bea

    const v27, 0x7f1213f7

    :goto_5a5
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "any_screen_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5ff

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "airmessage_on"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_bf4

    const/4 v6, 0x1

    :goto_5e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v6, :cond_bf7

    const v27, 0x7f121b7e

    :goto_5f8
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_5ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_60a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    :cond_60a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_636

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_bfc

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_bfc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_636
    :goto_636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_65e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    const-string/jumbo v28, "quick_dial"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_65e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6c3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "swipe_to_call_message"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_c4e

    const/16 v26, 0x1

    :goto_677
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_6a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v26, :cond_c52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7e

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_6a5
    :goto_6a5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "swipe_to_call_message"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_746

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "fingerprint_gesture_quick"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_c67

    const/4 v11, 0x1

    :goto_6db
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_6f5

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_6f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v11, 0x0

    :cond_6f5
    const-string/jumbo v25, ""

    if-eqz v11, :cond_c6a

    const v27, 0x7f121b7e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    :goto_705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "fingerprint_gesture_quick"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_761

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_c8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_761
    :goto_761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_782

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_782

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_782

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_782
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setLinkedDataView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v29, v0

    const-string/jumbo v30, "AdvancedFeatures"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_79c
    const v27, 0x7f121b7d

    goto/16 :goto_81

    :cond_7a1
    const v27, 0x7f121b7d

    goto/16 :goto_ae

    :cond_7a6
    const/16 v27, 0x0

    goto/16 :goto_fe

    :cond_7aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_105

    :cond_7c2
    const/4 v4, 0x0

    goto/16 :goto_125

    :cond_7c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_168

    :cond_7dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121496

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_7eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_7f9
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_858

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_84a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_83c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121497

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_83c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121496

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_84a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_pick_up"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_8a8

    const/16 v17, 0x1

    :goto_874
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_8b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v17, :cond_8ab

    const v27, 0x7f121b7e

    :goto_89f
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_8a8
    const/16 v17, 0x0

    goto :goto_874

    :cond_8ab
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_8b5

    const v27, 0x7f121497

    goto :goto_89f

    :cond_8b5
    const v27, 0x7f121496

    goto :goto_89f

    :cond_8b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v17, :cond_8cd

    const v27, 0x7f121b7e

    :goto_8c4
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1b7

    :cond_8cd
    const v27, 0x7f121b7d

    goto :goto_8c4

    :cond_8d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121499

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_8df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_8ed
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_94c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_93e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_930

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f12149a

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121499

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_93e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_94c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_pick_up_to_call_out"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_99c

    const/16 v18, 0x1

    :goto_968
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_9ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v18, :cond_99f

    const v27, 0x7f121b7e

    :goto_993
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_99c
    const/16 v18, 0x0

    goto :goto_968

    :cond_99f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_9a9

    const v27, 0x7f12149a

    goto :goto_993

    :cond_9a9
    const v27, 0x7f121499

    goto :goto_993

    :cond_9ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v18, :cond_9c1

    const v27, 0x7f121b7e

    :goto_9b8
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_206

    :cond_9c1
    const v27, 0x7f121b7d

    goto :goto_9b8

    :cond_9c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_250

    :cond_9d3
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_a1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_a11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_250

    :cond_a11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_250

    :cond_a1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_merged_mute_pause"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_a6a

    const/4 v15, 0x1

    :goto_a3a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_a71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v15, :cond_a6c

    const v27, 0x7f121b7e

    :goto_a61
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_250

    :cond_a6a
    const/4 v15, 0x0

    goto :goto_a3a

    :cond_a6c
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v27

    goto :goto_a61

    :cond_a71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v15, :cond_a85

    const v27, 0x7f121b7e

    :goto_a7c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_250

    :cond_a85
    const v27, 0x7f121b7d

    goto :goto_a7c

    :cond_a89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_29a

    :cond_a97
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_ae8

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_ae8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_ada

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b77

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2a6

    :cond_ada
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2a6

    :cond_ae8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_b38

    const/16 v16, 0x1

    :goto_b04
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_b3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v16, :cond_b3b

    const v27, 0x7f121b7e

    :goto_b2f
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2a6

    :cond_b38
    const/16 v16, 0x0

    goto :goto_b04

    :cond_b3b
    const v27, 0x7f121b77

    goto :goto_b2f

    :cond_b3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v16, :cond_b53

    const v27, 0x7f121b7e

    :goto_b4a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2a6

    :cond_b53
    const v27, 0x7f121b7d

    goto :goto_b4a

    :cond_b57
    const/16 v20, 0x0

    goto/16 :goto_2dd

    :cond_b5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v20, :cond_b89

    const v27, 0x7f121b7e

    :goto_b80
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_30d

    :cond_b89
    const v27, 0x7f1219c6

    goto :goto_b80

    :cond_b8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_359

    goto/16 :goto_33b

    :cond_ba7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b7d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3b5

    :cond_bb5
    const/4 v12, 0x0

    goto/16 :goto_3d1

    :cond_bb8
    const v27, 0x7f121b7d

    goto/16 :goto_3e7

    :cond_bbd
    const/16 v19, 0x0

    goto/16 :goto_452

    :cond_bc1
    const v27, 0x7f121b7d

    goto/16 :goto_45d

    :cond_bc6
    const/4 v10, 0x0

    goto/16 :goto_49a

    :cond_bc9
    const v27, 0x7f12083d

    goto/16 :goto_4bb

    :cond_bce
    const/16 v24, 0x0

    goto/16 :goto_4db

    :cond_bd2
    const v27, 0x7f1219d2

    goto/16 :goto_51b

    :cond_bd7
    const/4 v7, 0x0

    goto/16 :goto_558

    :cond_bda
    const/4 v8, 0x0

    goto/16 :goto_568

    :cond_bdd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_582

    :cond_bea
    const v27, 0x7f1213fb

    goto/16 :goto_5a5

    :cond_bef
    const v27, 0x7f1213ec

    goto/16 :goto_5a5

    :cond_bf4
    const/4 v6, 0x0

    goto/16 :goto_5e2

    :cond_bf7
    const v27, 0x7f120124

    goto/16 :goto_5f8

    :cond_bfc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "auto_adjust_touch"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_c4b

    const/16 v27, 0x1

    :goto_c24
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "auto_adjust_touch"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_636

    :cond_c4b
    const/16 v27, 0x0

    goto :goto_c24

    :cond_c4e
    const/16 v26, 0x0

    goto/16 :goto_677

    :cond_c52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6a5

    :cond_c67
    const/4 v11, 0x0

    goto/16 :goto_6db

    :cond_c6a
    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_c7f

    const v27, 0x7f120b20

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_705

    :cond_c7f
    const v27, 0x7f120b21

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_705

    :cond_c8c
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_ca7

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_ca7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_761

    :cond_ca7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_761
.end method
