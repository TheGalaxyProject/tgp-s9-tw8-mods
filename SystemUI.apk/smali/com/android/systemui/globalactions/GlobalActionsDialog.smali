.class Lcom/android/systemui/globalactions/GlobalActionsDialog;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$10;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$11;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$12;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$13;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$1;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$2;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$37;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$3;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$4;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$5;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$6;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$7;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$8;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$9;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ExtractColor;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$UIUpdateHandler;
    }
.end annotation


# static fields
.field private static final COUNTRY_CODE:Ljava/lang/String;

.field private static final SAFE_DEBUG:Z

.field private static final SALES_CODE:Ljava/lang/String;

.field private static final SCAFE:Ljava/lang/String;

.field private static final SUPPORT_FORCE_RESTART:Z

.field private static final SURVEY_LOG:Z

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static sAccessibilityShortcutEnabled:Z

.field private static sCurrentDensity:I

.field private static sHasVibrator:Z

.field private static sIsAirplaneConfirmDialogExist:Z

.field private static sIsClearCover:Z

.field private static sIsConfirmDlg:Z

.field private static sIsConfirming:Z

.field private static final sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsCoverOpen:Z

.field private static sIsNeedWhiteTheme:Z

.field private static sIsSViewCoverClosed:Z

.field private static sIsSecondConfirming:Z

.field private static sMessageViewColorWhite:I

.field private static sResource:Landroid/content/res/Resources;

.field private static sSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSilentModeView:Landroid/view/View;

.field private static sStatusViewColorWhite:I

.field private static sSupportBlackWhiteTheme:Z


# instance fields
.field private final BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

.field private final BLUR_DIM_AMOUNT:F

.field private final CONFIRM_DARK_OPACITY:I

.field private final CONFIRM_WHITE_OPACITY:I

.field private final DEFAULT_DARK_OPACITY:I

.field private final DEFAULT_WHITE_OPACITY:I

.field private final DO_NOT_MOVE:I

.field private final FORCE_RESTART_MAX_FONT_SCALE:F

.field private final INTERVAL_SCOVER_TRANSITION:I

.field private final MAX_WIDTH_RATIO:F

.field private final SUPPORT_BIKEMODE_ACTION:Z

.field private final SUPPORT_DATAMODE_ACTION:Z

.field private final SUPPORT_SAFEMODE_ACTION:Z

.field private final bgTouchListener:Landroid/view/View$OnTouchListener;

.field private mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBottomViewSingleItemHeight:I

.field private mBottomViewSingleItemWidth:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;

.field private mConfirmPowerOffIconResId:I

.field private mConfirmRestartIconResId:I

.field private mConfirmSViewCoverDialog:Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCurrentPositionXLand:F

.field private mCurrentPositionY:F

.field private mCurrentPositionYLand:F

.field private mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private mDisplayConfirm:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private mForceRestartLayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsBugReportEnable:Z

.field private mIsConfirmPowerOffOnClearCover:Z

.field private mIsDisableConfirm:Z

.field private mIsFirstCreated:Z

.field private mIsInitWidthHeight:Z

.field private mIsItemLongPressed:Z

.field private mIsSafeModeEnabled:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSelectedItemTagForBixby:I

.field private mIsSelectedItemTagForSecure:I

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field private mIsShopDemo:Z

.field private mIsTablet:Z

.field private mIsVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mIsWaitingForEcmExit:Z

.field private mItemDivider:I

.field private mItemDividerLand:I

.field private mItemHeight:I

.field private mItemLandscapeDivider:I

.field private mItemMaxWidth:I

.field private mItemMaxWidthForClearCoverClosed:I

.field private mItemMaxWidthForSViewCoverClosed:I

.field private mItemMaxWidthLand:I

.field private mItemPortraitDivider:I

.field private mItemPortraitDividerOverFour:I

.field private mItemPortraitDividerSViewCover:I

.field private mItemWidth:I

.field private mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mMessageViewPaddingBottom:I

.field private mMessageViewPaddingTop:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerOffIconResId:I

.field private mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mRestartAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

.field private mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSafeModeIconResId:I

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mSelectedItemView:Landroid/view/View;

.field private mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mShowNavigationBar:Z

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

.field private mSubScreenAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mSubScreenState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

.field private sBugReportStatusViewColorWhite:I

.field private final scrollViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mGrxRecoveryAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsItemLongPressed:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SCAFE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForBixby:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsShopDemo:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemHeight:I

    return v0
.end method

.method static synthetic -get36(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidth:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_DATAMODE_ACTION:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/systemui/globalactions/GlobalActionsDialog;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get43()Landroid/widget/EditText;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get44(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get45(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    return v0
.end method

.method static synthetic -get46(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get48()I
    .registers 1

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get49()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_SAFEMODE_ACTION:Z

    return v0
.end method

.method static synthetic -get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object v0
.end method

.method static synthetic -get51(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get53(Lcom/android/systemui/globalactions/GlobalActionsDialog;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/hardware/usb/UsbManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object v0
.end method

.method static synthetic -get56()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    return v0
.end method

.method static synthetic -get57()I
    .registers 1

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    return v0
.end method

.method static synthetic -get58()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sHasVibrator:Z

    return v0
.end method

.method static synthetic -get59()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    return-object v0
.end method

.method static synthetic -get60()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get61()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get62()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get63()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic -get64()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    return v0
.end method

.method static synthetic -get65()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get66()I
    .registers 1

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sMessageViewColorWhite:I

    return v0
.end method

.method static synthetic -get67()Landroid/content/res/Resources;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get68()Landroid/view/View;
    .registers 1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSilentModeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get69()I
    .registers 1

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sStatusViewColorWhite:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -get70()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set13(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set14(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSubScreenState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set16(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    return p0
.end method

.method static synthetic -set17(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set18(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set19(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set20(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsItemLongPressed:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Landroid/view/ViewGroup;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItemView(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isVoiceAssistantOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginStartAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginTopAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap19(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->actionClicked(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/globalactions/GlobalActionsDialog;IZZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->bottomViewOnTouch(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->airplaneModeClickAction(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeConfirmDialogByOrientation(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/view/View;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->confirmAction(Landroid/view/View;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->confirmDialog(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/systemui/globalactions/GlobalActionsDialog;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideConfirmDialog(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideDecorView()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->performItemLongClickForSafemode(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sendBendedPendingIntent()V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isFMMLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/systemui/globalactions/GlobalActionsDialog;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateWindowBlur(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isInAirplaneModeFromSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/systemui/globalactions/GlobalActionsDialog;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->COUNTRY_CODE:Ljava/lang/String;

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SCAFE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SURVEY_LOG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_FORCE_RESTART:Z

    sput v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskMenuPosition:I

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskOptionShown:Z

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsAirplaneConfirmDialogExist:Z

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    sput-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x138e4

    if-lt v2, v3, :cond_7e

    :goto_68
    sput-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSilentModeView:Landroid/view/View;

    sput v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    sput v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sMessageViewColorWhite:I

    sput v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sStatusViewColorWhite:I

    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_7e
    move v0, v1

    goto :goto_68
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .registers 12

    const/16 v8, 0x99

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->INTERVAL_SCOVER_TRANSITION:I

    const/16 v2, -0x3e8

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->DO_NOT_MOVE:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_303

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_37
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_BIKEMODE_ACTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_DATAMODE_ACTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Framework_SupportRebootWithSafemode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_SAFEMODE_ACTION:Z

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSubScreenState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayConfirm:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsBugReportEnable:Z

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCancelButton:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDontShowCheckbox:Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScrollview:Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneMsg:Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v2, v3

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTrueStringArray:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsDisableConfirm:Z

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsFirstCreated:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsInitWidthHeight:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsScreenOFF:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageVZW:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageCHINA:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsShopDemo:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowNavigationBar:Z

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowOnAirplaneConfirm:Z

    iput v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    iput v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    iput v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionYLand:F

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemHeight:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemWidth:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDividerLand:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemHeight:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForClearCoverClosed:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForSViewCoverClosed:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthLand:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidth:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingTop:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingBottom:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmPowerOffIconResId:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmRestartIconResId:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyIconResId:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSafeModeIconResId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemNumbyBixby:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForBixby:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsItemLongPressed:Z

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sBugReportStatusViewColorWhite:I

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    const v2, 0x3e19999a    # 0.15f

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->BLUR_DIM_AMOUNT:F

    iput v8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->DEFAULT_DARK_OPACITY:I

    const/16 v2, 0xcc

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->CONFIRM_DARK_OPACITY:I

    const/16 v2, 0x66

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->DEFAULT_WHITE_OPACITY:I

    iput v8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->CONFIRM_WHITE_OPACITY:I

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->FORCE_RESTART_MAX_FONT_SCALE:F

    const v2, 0x3f5c28f6    # 0.86f

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->MAX_WIDTH_RATIO:F

    const-string/jumbo v2, "com.samsung.android.app.bikemode"

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->bgTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v2, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "POWER_OFF_CANCEL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_306

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :goto_24f
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sHasVibrator:Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11200b8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "shopdemo"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_309

    move v2, v4

    :goto_2a5
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsShopDemo:Z

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1120096

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowNavigationBar:Z

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v2, :cond_2d8

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSBikeInstalled()Z

    move-result v2

    if-eqz v2, :cond_2d8

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2d8
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.sec.feature.folder_type"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ee

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    :cond_2ee
    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsDisableConfirm:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->initCoverManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->registerBixbyReceiver()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-void

    :cond_303
    move v2, v3

    goto/16 :goto_37

    :cond_306
    move v2, v3

    goto/16 :goto_24f

    :cond_309
    move v2, v3

    goto :goto_2a5
.end method

.method private actionClicked(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V
    .registers 13

    const/4 v8, 0x1

    const v5, 0x10202d6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_11

    return-void

    :cond_11
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_18

    return-void

    :cond_18
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x102000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x10204ed

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isActionAvailable(I)Z

    move-result v5

    if-nez v5, :cond_44

    return-void

    :cond_44
    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForBixby:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateDescViewHeight(Landroid/view/View;I)V

    const-string/jumbo v5, "GlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actionClicked item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    if-nez v5, :cond_84

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsDisableConfirm:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_84

    invoke-direct {p0, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSingleActionItem(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-direct {p0, p2, v8, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showConfirmDialog(Landroid/view/View;ZZ)V

    :goto_83
    return-void

    :cond_84
    invoke-direct {p0, p2, p1, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->confirmAction(Landroid/view/View;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Z)V

    goto :goto_83
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 13

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$33;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$33;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit v6

    return v0

    :catchall_15
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/systemui/globalactions/GlobalActionsDialog$Action;Ljava/util/ArrayList;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_1e

    if-eqz p3, :cond_1e

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1e

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1c

    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskMenuPosition:I

    :cond_1c
    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v6, :cond_6b

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_69

    :goto_35
    const/4 v7, 0x1

    :goto_36
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_40
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$38;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_78

    const-string/jumbo v1, " \u2714"

    :goto_56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v2, 0x1080473

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$38;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_69
    const/4 v7, 0x0

    goto :goto_36

    :cond_6b
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_69

    goto :goto_35

    :cond_72
    const/4 v3, 0x0

    goto :goto_40

    :cond_74
    const-string/jumbo v1, "Primary"

    goto :goto_4d

    :cond_78
    const-string/jumbo v1, ""

    goto :goto_56

    :cond_7c
    return-void
.end method

.method private adjustBottomView()V
    .registers 12

    const/16 v8, 0x8

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsBugReportEnable:Z

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d0

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d2

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d1

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowNavigationBar:Z

    if-eqz v6, :cond_77

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_77

    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v7, 0x1050151

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d4

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6c
    :goto_6c
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$43;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$43;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_77
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemWidth:I

    iget v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemHeight:I

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c
.end method

.method private adjustForceRestartView()V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_a5

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v6, :cond_12

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v6, :cond_a5

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v6, :cond_a5

    :cond_12
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d4

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202c5

    invoke-virtual {v6, v7}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowNavigationBar:Z

    if-eqz v6, :cond_4f

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4f

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4f

    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v7, 0x1050151

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsBugReportEnable:Z

    if-nez v6, :cond_4f

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_4f
    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v6, :cond_61

    if-eqz v5, :cond_61

    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v7, 0x1060211

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_61
    sget-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v7, 0x1050344

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget-object v7, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v6, v7

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_80

    const v1, 0x3f99999a    # 1.2f

    :cond_80
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x1040379

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_9c

    mul-float v6, v1, v4

    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9c
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a5
    return-void
.end method

.method private airplaneModeClickAction(Z)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    if-nez v0, :cond_7c

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_12
    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_79

    monitor-exit v0

    :goto_15
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    if-eqz v0, :cond_55

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    if-eqz p1, :cond_78

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_78

    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_78
    return-void

    :catchall_79
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_7c
    sput-boolean v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    goto :goto_15

    :cond_7f
    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    if-eqz v0, :cond_55

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private awakenIfNecessary()V
    .registers 3

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_11

    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private bottomViewOnTouch(IZZ)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_19

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    if-eqz v0, :cond_d

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_d

    return v2

    :cond_d
    if-eqz p3, :cond_13

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideConfirmDialog(ZZ)V

    :goto_12
    return v2

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_19
    if-ne p1, v2, :cond_25

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    if-eqz v0, :cond_25

    if-eqz p3, :cond_26

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    iput-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    :cond_25
    :goto_25
    return v1

    :cond_26
    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_25
.end method

.method private buildActionsBaseView(Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetScrollView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez p1, :cond_1e

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2c

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v3, 0x105035f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->bgTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->fillActionItemViews(Z)V

    return-void

    :cond_2c
    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v3, 0x1050360

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    goto :goto_1e
.end method

.method private captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16

    if-nez p1, :cond_d

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_d
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move v1, v13

    move v2, v12

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_8e

    :goto_37
    :pswitch_37
    const/4 v11, 0x0

    const/16 v3, 0x4e20

    const v4, 0x30d40

    :try_start_3d
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_81

    move-result-object v11

    :goto_4a
    if-nez v11, :cond_8c

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_7e
    move v1, v12

    move v2, v13

    goto :goto_37

    :catch_81
    move-exception v9

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v5, "captureScreen : failed to access screenshot API : "

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :cond_8c
    return-object v11

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_37
        :pswitch_7e
    .end packed-switch
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_58

    move v1, v2

    :goto_e
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_2b
    if-eqz p1, :cond_5a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$39;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$39;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4d
    :goto_4d
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-nez v1, :cond_57

    if-eqz p1, :cond_75

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_55
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :cond_57
    return-void

    :cond_58
    move v1, v3

    goto :goto_e

    :cond_5a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4d

    :cond_75
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_55
.end method

.method private changeConfirmDialogByOrientation(Z)V
    .registers 12

    iget-object v8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-nez v8, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_5a

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_b
    const/4 v1, 0x0

    :goto_c
    iget-object v8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v8

    if-ge v1, v8, :cond_62

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    const v8, 0x10202d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x10204ed

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    xor-int/lit8 v8, p1, 0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->fillActionItemViews(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {p0, v2, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateDescViewHeight(Landroid/view/View;I)V

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showConfirmDialog(Landroid/view/View;ZZ)V

    return-void

    :cond_5a
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_b

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_62
    return-void
.end method

.method private checkAirplaneModeOnOff()V
    .registers 5

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isInAirplaneModeFromSettings()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isInAirplaneModeFromSettings()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_26
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3a
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_26
.end method

.method private clearCustomDialogItems()V
    .registers 5

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    instance-of v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    iget-boolean v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    goto :goto_9

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_26
    monitor-exit v3

    return-void
.end method

.method private clearSCoverRequestStatus()V
    .registers 5

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->restoreQuickPanelBackground(Ljava/lang/String;)V

    goto :goto_19

    :cond_29
    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmAction(Landroid/view/View;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Z)V
    .registers 15

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p3, :cond_21

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSecurePowerOff(I)Z

    move-result v5

    if-eqz v5, :cond_21

    return-void

    :cond_21
    iput-boolean v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayConfirm:Z

    if-eqz v2, :cond_55

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-eq v5, v6, :cond_55

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-eq v5, v6, :cond_55

    invoke-interface {p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, p1, v9}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_54
    return-void

    :cond_55
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    const v6, 0x1020362

    invoke-virtual {v5, v6}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    if-eqz v5, :cond_98

    const/4 v1, 0x0

    :goto_65
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_98

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_81

    invoke-direct {p0, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_81

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_81
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_95

    invoke-direct {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_98
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/16 v7, 0x99

    const/16 v8, 0xff

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$31;

    invoke-direct {v5, p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$31;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_54
.end method

.method private confirmDialog(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;III)V
    .registers 23

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsAirplaneConfirmDialogExist:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v14, v15, :cond_dc

    const v13, 0x10402f9

    const/4 v10, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_e1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_24
    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v14, :cond_101

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_101

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v16, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_fa

    move/from16 v14, p3

    :goto_49
    invoke-virtual {v15, v14}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_fe

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v16, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_fe

    const v14, 0x10403bd

    :goto_60
    invoke-virtual {v15, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v16, 0x1040009

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v11

    :goto_75
    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialogReceiver:Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v14, :cond_1e2

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1e2

    if-eqz v11, :cond_d2

    invoke-virtual {v11}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v15, 0x1120094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_aa

    invoke-virtual {v11}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_aa
    invoke-virtual {v11}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v14, 0x1

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v14, 0x0

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->show()V

    const-string/jumbo v14, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideQuickPanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmSViewCoverDialog:Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

    :cond_d2
    :goto_d2
    if-nez v7, :cond_db

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x1

    :try_start_d8
    sput-boolean v15, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_da
    .catchall {:try_start_d8 .. :try_end_da} :catchall_2bb

    monitor-exit v14

    :cond_db
    return-void

    :cond_dc
    const v13, 0x10402b5

    goto/16 :goto_17

    :cond_e1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_ef

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_24

    :cond_ef
    const-string/jumbo v14, "GlobalActionsDialog"

    const-string/jumbo v15, "Cannot find ClickListener."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :cond_fa
    move/from16 v14, p4

    goto/16 :goto_49

    :cond_fe
    move v14, v13

    goto/16 :goto_60

    :cond_101
    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v14, :cond_196

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v14, :cond_196

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const v15, 0x103031f

    invoke-direct {v1, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_115
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v14, :cond_126

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_1b2

    :cond_126
    if-eqz v6, :cond_1b2

    if-eqz v10, :cond_1b2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v14, 0x1090141

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageVZW:Z

    if-eqz v14, :cond_1a1

    const/4 v9, 0x1

    const-string/jumbo v14, "GlobalActionsDialog"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for VZW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14f
    :goto_14f
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020548

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const v14, 0x102000b

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneMsg:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_175
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_1c3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v14, v15, :cond_1c3

    const v13, 0x10403bd

    :goto_186
    invoke-virtual {v1, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1040009

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_75

    :cond_196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_115

    :cond_1a1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_14f

    const/4 v8, 0x1

    const-string/jumbo v14, "GlobalActionsDialog"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    :cond_1b2
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v14, v15, :cond_1c0

    move/from16 v14, p3

    :goto_1bc
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_175

    :cond_1c0
    move/from16 v14, p4

    goto :goto_1bc

    :cond_1c3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v14, v15, :cond_1de

    const-string/jumbo v14, "VZW"

    sget-object v15, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1da

    const v13, 0x104000a

    goto :goto_186

    :cond_1da
    const v13, 0x10402f9

    goto :goto_186

    :cond_1de
    const v13, 0x10402b5

    goto :goto_186

    :cond_1e2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialogReceiver:Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;

    iput-object v4, v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialogReceiver:Lcom/android/systemui/globalactions/GlobalActionsDialog$ConfirmDialogReceiver;

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v14, :cond_2ab

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v14, :cond_2ab

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    :goto_200
    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v15, 0x1120094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_213

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_213
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowOnAirplaneConfirm:Z

    if-nez v14, :cond_2b6

    if-nez v9, :cond_221

    if-eqz v8, :cond_2b6

    :cond_221
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->airplaneModeClickAction(Z)V

    const/4 v7, 0x1

    :goto_228
    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    if-eqz v14, :cond_2a5

    const-string/jumbo v14, "GlobalActionsDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "in confirmDialog action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resON = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "resOFF = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " config_sf_slowBlur = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v17, 0x1120094

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resTitle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mAirplaneModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mDataModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_d2

    :cond_2ab
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x96b

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_200

    :cond_2b6
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_228

    :catchall_2bb
    move-exception v15

    monitor-exit v14

    throw v15
.end method

.method private createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 31

    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskOptionShown:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/16 v25, 0x0

    sput v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskMenuPosition:I

    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedState"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "true"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e2

    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addDialogItemsIfEnabled(ILcom/android/systemui/globalactions/GlobalActionsDialog$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x40

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addDialogItemsIfEnabled(ILcom/android/systemui/globalactions/GlobalActionsDialog$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x80

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addDialogItemsIfEnabled(ILcom/android/systemui/globalactions/GlobalActionsDialog$Action;Ljava/util/ArrayList;Z)Z

    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x100

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addDialogItemsIfEnabled(ILcom/android/systemui/globalactions/GlobalActionsDialog$Action;Ljava/util/ArrayList;Z)Z

    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    const/4 v7, 0x0

    :cond_e2
    if-eqz v7, :cond_33d

    sget-object v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v26, 0x1070053

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/16 v25, 0x0

    array-length v0, v13

    move/from16 v27, v0

    move/from16 v26, v25

    :goto_f9
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_308

    aget-object v6, v13, v26

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10c

    :cond_107
    :goto_107
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto :goto_f9

    :cond_10c
    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v25, :cond_131

    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_107

    const-string/jumbo v25, "users"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_107

    const-string/jumbo v25, "settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_107

    :cond_131
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v25

    if-nez v25, :cond_150

    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_150

    const-string/jumbo v25, "GlobalActionsDialog"

    const-string/jumbo v28, "Removed Emergency mode button because of Knox creation."

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    :cond_150
    const-string/jumbo v25, "power"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_179

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    new-instance v28, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_175
    :goto_175
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_107

    :cond_179
    const-string/jumbo v25, "airplane"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    :cond_198
    const-string/jumbo v25, "subscreen"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_175

    const-string/jumbo v25, "datamode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    :cond_1c2
    const-string/jumbo v25, "bugreport"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v28, "bugreport_in_power_menu"

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1f8

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCurrentUserOwner()Z

    move-result v25

    if-eqz v25, :cond_1f8

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    :goto_1f0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsBugReportEnable:Z

    goto/16 :goto_175

    :cond_1f8
    const/16 v25, 0x0

    goto :goto_1f0

    :cond_1fb
    const-string/jumbo v25, "restart"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGrxRecoveryAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_21b
    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_23b
    const-string/jumbo v25, "silent"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_263

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    move/from16 v25, v0

    if-eqz v25, :cond_175

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_263
    const-string/jumbo v25, "users"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_28c

    const-string/jumbo v25, "fw.power_user_switcher"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_175

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_175

    :cond_28c
    const-string/jumbo v25, "settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_2aa
    const-string/jumbo v25, "voiceassist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_2c8
    const-string/jumbo v25, "assist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_175

    :cond_2e6
    const-string/jumbo v25, "GlobalActionsDialog"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Invalid global action key "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_175

    :cond_308
    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v25

    sput-object v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSilentModeView:Landroid/view/View;

    :cond_33d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_BIKEMODE_ACTION:Z

    move/from16 v25, v0

    if-eqz v25, :cond_35a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSBikeInstalled()Z

    move-result v25

    if-eqz v25, :cond_35a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v25

    if-eqz v25, :cond_3ab

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->clearCustomDialogItems()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3ab

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_381
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3ab

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;I)Z

    goto :goto_381

    :cond_3ab
    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    new-instance v20, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v25, :cond_3d5

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v25, :cond_671

    :cond_3d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_3ef
    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    const-string/jumbo v25, "GlobalActionsDialog"

    const-string/jumbo v26, "Create GlobalActionsDialog"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v19, Lcom/android/systemui/globalactions/GlobalActionsDialog$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$15;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-boolean v27, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202cf

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020219

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020233

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d3

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202cd

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d8

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ScrollView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScrollview:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d5

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x102021a

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x102021b

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    if-nez v25, :cond_506

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202ce

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    :cond_506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$16;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x1040177

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v27, v26, v28

    sget-object v27, Landroid/os/Build;->ID:Ljava/lang/String;

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const v27, 0x1040176

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_576

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sBugReportStatusViewColorWhite:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsBugReportEnable:Z

    move/from16 v25, v0

    if-nez v25, :cond_6ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_59b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->adjustForceRestartView()V

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->buildActionsBaseView(Z)V

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    if-nez v25, :cond_5b4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->buildActionsBaseView(Z)V

    :cond_5b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020362

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_6b0

    const v25, 0x106020a

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_5e3
    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_6ba

    const/16 v22, 0x66

    :goto_5e9
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x1

    aput v22, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v26, 0x12c

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/animation/ObjectAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    if-eqz v21, :cond_630

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setContentView(Landroid/view/View;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v25, :cond_64a

    sget-boolean v25, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v25, :cond_670

    :cond_64a
    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_670

    new-instance v25, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_670
    return-object v14

    :cond_671
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLayout:Landroid/widget/LinearLayout;

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_3ef

    :cond_6ab
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->adjustBottomView()V

    goto/16 :goto_59b

    :cond_6b0
    const v25, 0x106020b

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_5e3

    :cond_6ba
    const/16 v22, 0x99

    goto/16 :goto_5e9
.end method

.method private dismissDialog()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1e
    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmSViewCoverDialog:Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmSViewCoverDialog:Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmSViewCoverDialog:Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    if-nez v0, :cond_62

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_41
    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_5f

    monitor-exit v0

    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_58

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    :cond_58
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsScreenOFF:Z

    return-void

    :catchall_5f
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_62
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    goto :goto_44
.end method

.method private doActionByBixby(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_4d

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-ne p1, v0, :cond_5e

    :cond_4d
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->actionClicked(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    :cond_5e
    return-void
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .registers 45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-object/from16 v31, v0

    if-nez v31, :cond_9

    return-void

    :cond_9
    const v31, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v31, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const v32, 0x10201e6

    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v31, 0x10202d6

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v31, :cond_58

    if-eqz v10, :cond_58

    sget v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sStatusViewColorWhite:I

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_58
    if-eqz p6, :cond_42c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_40e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_409

    const v9, 0x1040399

    :cond_71
    :goto_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/16 v34, 0x0

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/16 v34, 0x0

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setClickable(Z)V

    :goto_10a
    const-wide/16 v32, 0x190

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v31, v0

    const v32, 0x1020362

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    if-eqz p6, :cond_4c7

    const-string/jumbo v31, "translationX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p2, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    const-string/jumbo v31, "translationY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p3, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const-string/jumbo v31, "translationY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fd999999999999aL    # 0.4

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingTop:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    :goto_18f
    const-string/jumbo v31, "scaleX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p4, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-string/jumbo v31, "scaleY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p4, v32, v33

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    const v31, 0x10202f9

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v31, 0x10202fc

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v31, :cond_527

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_527

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_527

    if-eqz p6, :cond_51b

    const v20, 0x10403ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_516

    const v9, 0x104039d

    :goto_203
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_20a
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_211
    if-eqz v9, :cond_216

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_216
    const/16 v18, 0x0

    if-eqz p6, :cond_545

    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v31, :cond_530

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_530

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_530

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x0

    const/16 v33, 0xff

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-string/jumbo v31, "alpha"

    const/16 v32, 0xff

    const/16 v33, 0x0

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    :goto_258
    const-string/jumbo v31, "scaleX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const v33, 0x3f6b851f    # 0.92f

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    const-string/jumbo v31, "scaleY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const v33, 0x3f99999a    # 1.2f

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    :goto_290
    const-wide/16 v32, 0xc8

    move-object/from16 v0, v19

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p6, :cond_5e1

    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v31, :cond_5cf

    const v31, 0x106020a

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2a9
    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v31, :cond_5db

    const/16 v28, 0x66

    const/16 v11, 0x99

    :goto_2b1
    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput v28, v33, v34

    const/16 v34, 0x1

    aput v11, v33, v34

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v31, Lcom/android/systemui/globalactions/GlobalActionsDialog$32;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$32;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-nez v31, :cond_37b

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    const-string/jumbo v32, "backgroundColor"

    new-instance v33, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v33 .. v33}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v36, 0x106020b

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v36, 0x0

    aput-object v35, v34, v36

    sget-object v35, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v36, 0x106020c

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v36, 0x1

    aput-object v35, v34, v36

    invoke-static/range {v31 .. v34}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v6, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_37b
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v31, v0

    const/16 v32, -0x3e8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_399

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v29, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_399
    if-eqz v12, :cond_3ac

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v12, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3ac
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v31, v0

    const/16 v32, -0x3e8

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3ca

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v30, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3ca
    if-eqz v18, :cond_3e6

    const-wide/16 v32, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v18, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3e6
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v31, Landroid/view/animation/PathInterpolator;

    const v32, 0x3e2e147b    # 0.17f

    const v33, 0x3e2e147b    # 0.17f

    const v34, 0x3e4ccccd    # 0.2f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-direct/range {v31 .. v35}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_409
    const v9, 0x1040398

    goto/16 :goto_71

    :cond_40e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_71

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_427

    const v9, 0x104039b

    goto/16 :goto_71

    :cond_427
    const v9, 0x104039a

    goto/16 :goto_71

    :cond_42c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/16 v34, 0x0

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v34

    const/16 v35, 0x0

    aput v34, v33, v35

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x1

    aput v34, v33, v35

    invoke-static/range {v31 .. v33}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :cond_4af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBugReport:Landroid/widget/Button;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_10a

    :cond_4c7
    const-string/jumbo v31, "x"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p2, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    const-string/jumbo v31, "y"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput p3, v32, v33

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const-string/jumbo v31, "translationY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    goto/16 :goto_18f

    :cond_516
    const v9, 0x104039c

    goto/16 :goto_203

    :cond_51b
    const v20, 0x10403a5

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_20a

    :cond_527
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_211

    :cond_530
    const-string/jumbo v31, "alpha"

    const/16 v32, 0x0

    const/16 v33, 0xff

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto/16 :goto_258

    :cond_545
    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v31, :cond_5bb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_5bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5bb

    const-string/jumbo v31, "alpha"

    const/16 v32, 0xff

    const/16 v33, 0x0

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-string/jumbo v31, "alpha"

    const/16 v32, 0x0

    const/16 v33, 0xff

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    :goto_583
    const-string/jumbo v31, "scaleX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    const-string/jumbo v31, "scaleY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    goto/16 :goto_290

    :cond_5bb
    const-string/jumbo v31, "alpha"

    const/16 v32, 0xff

    const/16 v33, 0x0

    filled-new-array/range {v32 .. v33}, [I

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto :goto_583

    :cond_5cf
    const v31, 0x106020b

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_2a9

    :cond_5db
    const/16 v28, 0x99

    const/16 v11, 0xcc

    goto/16 :goto_2b1

    :cond_5e1
    sget-boolean v31, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v31, :cond_5eb

    const/16 v28, 0x99

    const/16 v11, 0x66

    goto/16 :goto_2b1

    :cond_5eb
    const/16 v28, 0xcc

    const/16 v11, 0x99

    goto/16 :goto_2b1
.end method

.method private fillActionItemViews(Z)V
    .registers 7

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz p1, :cond_40

    sget-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v3, :cond_2d

    sget-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    :goto_1a
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_45

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v3

    invoke-direct {p0, v3, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItemView(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2d
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_3b

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    goto :goto_1a

    :cond_3b
    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    goto :goto_1a

    :cond_40
    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDividerLand:I

    goto :goto_1a

    :cond_45
    return-void
.end method

.method private findTargetScrollView(Z)Landroid/view/ViewGroup;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScrollview:Landroid/widget/ScrollView;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_4
.end method

.method private findTargetView(Z)Landroid/view/ViewGroup;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_4
.end method

.method private getActionViewByTag(I)Landroid/view/View;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v3, :cond_35

    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_32

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemNumbyBixby:I

    return-object v2

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    return-object v4
.end method

.method private getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$35;

    const v1, 0x1080378

    const v2, 0x104038b

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$35;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getMarginStartAtCenter(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsInitWidthHeight:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->initDialogWidthHeight()V

    :cond_7
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMarginTopAtCenter(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsInitWidthHeight:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->initDialogWidthHeight()V

    :cond_7
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getPhoneId(I)I
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .registers 4

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$41;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$41;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$34;

    const v1, 0x10804e3

    const v2, 0x10403b1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$34;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$36;

    const v1, 0x1080503

    const v2, 0x10403b8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$36;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 10

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleShow() : call createDialog(), sIsCoverOpen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCoverOpened()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isMobileKeyboard()Z

    move-result v2

    :goto_2d
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isClearCover()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v2, :cond_61

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_3d
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSViewCoverClosed:Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v2, :cond_63

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_63

    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->notifyStateToCocktailBar()V

    return-void

    :cond_5f
    move v2, v3

    goto :goto_2d

    :cond_61
    move v2, v4

    goto :goto_3d

    :cond_63
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-nez v2, :cond_77

    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_77
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->prepareDialog()V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_ac

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->onPress()V

    :goto_ab
    return-void

    :cond_ac
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v5, 0x10403b9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v2, :cond_ea

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_ea
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x3e19999a    # 0.15f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x10000

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowNavigationBar:Z

    if-eqz v2, :cond_12c

    const v1, 0x10200

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_123

    or-int/lit8 v1, v1, 0x10

    :cond_123
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_12c
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->show()V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v2}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_146

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_141
    :goto_141
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideQuickPanelBackground()V

    goto/16 :goto_ab

    :cond_146
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_141

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_141
.end method

.method private hasTSafeLock()Z
    .registers 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_5
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_19

    move-result-object v3

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :cond_16
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16

    :catch_19
    move-exception v1

    return v7
.end method

.method private hideConfirmDialog(ZZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v7, 0x0

    :goto_a
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_c3

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const v0, 0x10202d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4c
    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_4f
    const v0, 0x10204ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_69
    if-eqz p1, :cond_97

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_86

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_86
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_4c

    :cond_97
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_b2

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDividerLand:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_b2
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionYLand:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_4c

    :cond_c3
    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sAccessibilityShortcutEnabled:Z

    if-nez v0, :cond_d4

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_d4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    :cond_d4
    return-void
.end method

.method private hideDecorView()V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2a
    return-void
.end method

.method private hideQuickPanelBackground()V
    .registers 2

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideQuickPanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickPanelBackground(Ljava/lang/String;)V
    .registers 6

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method private initDialogWidthHeight()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    :goto_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsInitWidthHeight:Z

    :cond_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    goto :goto_2a
.end method

.method private initValueForShow()V
    .registers 10

    const/4 v8, 0x2

    const/4 v3, 0x1

    const v7, 0x3f5c28f6    # 0.86f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105034c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemHeight:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidth:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    if-ge v5, v6, :cond_1be

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthLand:I

    :goto_61
    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050357

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForClearCoverClosed:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050358

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForSViewCoverClosed:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050353

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDivider:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050355

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerOverFour:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050354

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemPortraitDividerSViewCover:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemLandscapeDivider:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemWidth:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBottomViewSingleItemHeight:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050352

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingTop:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050351

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingBottom:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x106020f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sBugReportStatusViewColorWhite:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1060214

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sMessageViewColorWhite:I

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v6, 0x1060217

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sStatusViewColorWhite:I

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v5, :cond_108

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_108

    iput v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    :cond_108
    iput v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForBixby:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemNumbyBixby:I

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsInitWidthHeight:Z

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    sget-boolean v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_1db

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_184

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_1ce

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_134
    invoke-static {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v0

    if-eqz v0, :cond_184

    const-string/jumbo v5, "GlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Whole Area Hue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Saturation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Brightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v0, v3

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1d9

    aget v5, v0, v8

    const v6, 0x3f6147ae    # 0.88f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1d9

    :goto_182
    sput-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsNeedWhiteTheme:Z

    :cond_184
    const v3, 0x1080a9a

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    const v3, 0x1080a99

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmPowerOffIconResId:I

    const v3, 0x1080a9e

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    const v3, 0x1080a9d

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmRestartIconResId:I

    const v3, 0x1080a95

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyIconResId:I

    const v3, 0x1080aa0

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSafeModeIconResId:I

    :goto_1a2
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialog$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$14;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    return-void

    :cond_1be
    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthLand:I

    goto/16 :goto_61

    :cond_1ce
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayHeight:I

    iget v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDisplayWidth:I

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_134

    :cond_1d9
    move v3, v4

    goto :goto_182

    :cond_1db
    const v3, 0x1080a97

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    const v3, 0x1080a98

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmPowerOffIconResId:I

    const v3, 0x1080a9b

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    const v3, 0x1080a9c

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmRestartIconResId:I

    const v3, 0x1080a94

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyIconResId:I

    const v3, 0x1080aa0

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSafeModeIconResId:I

    goto :goto_1a2
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SURVEY_LOG:Z

    if-eqz v2, :cond_60

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.service.GlobalAction"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    if-eqz v2, :cond_60

    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method private isActionAvailable(I)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_20

    const v0, 0x10403d0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    :cond_20
    return v4

    :cond_21
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isFMMLocked()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_2d
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_35

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-ne p1, v0, :cond_46

    :cond_35
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_75

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_75

    const v0, 0x10403d1

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    :cond_45
    :goto_45
    return v4

    :cond_46
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_35

    :cond_4a
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_52

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-ne p1, v0, :cond_8f

    :cond_52
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SAFE_DEBUG:Z

    if-eqz v0, :cond_74

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return v4

    :cond_75
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-eq p1, v0, :cond_7d

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_84

    :cond_7d
    const v0, 0x10403d3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    goto :goto_45

    :cond_84
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_45

    const v0, 0x10403ce

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    goto :goto_45

    :cond_8f
    return v3
.end method

.method private isCHINA()Z
    .registers 3

    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "CHM"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private isClearCover()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isCoverOpened()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_30
    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3a
    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    if-nez p3, :cond_30

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_1c
    :goto_1c
    if-eqz v6, :cond_2f

    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_3e

    move-result-object v7

    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object v7

    :cond_30
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1c

    :catchall_3e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .registers 3

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInAirplaneModeFromSettings()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    return v0

    :cond_10
    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMobileKeyboard()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1a

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1b

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method

.method private isMultiSim()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isPortrait()Z
    .registers 3

    const/4 v0, 0x1

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isRMMLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSBikeInstalled()Z
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "com.samsung.android.app.bikemode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecurePowerOff(I)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    :goto_10
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_1d

    :cond_1a
    return v1

    :cond_1b
    move v0, v1

    goto :goto_10

    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimLock()Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    :cond_24
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lock_function_val"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_34

    return v1

    :cond_34
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isRMMLocked()Z

    move-result v0

    if-eqz v0, :cond_3b

    return v1

    :cond_3b
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4e

    const v0, 0x10403d2

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showToast(II)V

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsConfirmPowerOffOnClearCover:Z

    return v3

    :cond_4e
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_68

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "isFMMLocked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSelectedItemTagForSecure:I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sendBendedPendingIntent()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    :cond_68
    return v1
.end method

.method private isSimCardInserted(I)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz p1, :cond_15

    :goto_14
    return v4

    :cond_15
    move v4, v5

    goto :goto_14

    :cond_17
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2d

    return v5

    :cond_2d
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_4c

    :goto_31
    if-eqz v2, :cond_4a

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_3a
    if-nez v6, :cond_43

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    move v5, v4

    :cond_43
    return v5

    :pswitch_44
    aget-object v2, v0, v5

    goto :goto_31

    :pswitch_47
    aget-object v2, v0, v4

    goto :goto_31

    :cond_4a
    move v6, v4

    goto :goto_3a

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_44
        :pswitch_47
    .end packed-switch
.end method

.method private isSimLock()Z
    .registers 11

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isMultiSim()Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v1, :cond_45

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    aget v5, v0, v4

    if-eq v5, v7, :cond_33

    aget v5, v0, v4

    if-ne v5, v8, :cond_38

    :cond_33
    move v5, v6

    :goto_34
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_38
    aget v5, v0, v4

    if-ne v5, v9, :cond_3e

    move v5, v6

    goto :goto_34

    :cond_3e
    const/4 v5, 0x0

    goto :goto_34

    :cond_40
    if-eq v2, v7, :cond_44

    if-ne v2, v8, :cond_46

    :cond_44
    const/4 v3, 0x1

    :cond_45
    :goto_45
    return v3

    :cond_46
    if-ne v2, v9, :cond_4a

    const/4 v3, 0x1

    goto :goto_45

    :cond_4a
    const/4 v3, 0x0

    goto :goto_45
.end method

.method private isSimReady()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_15

    if-ne v0, v8, :cond_5c

    :cond_15
    const/4 v4, 0x1

    :goto_16
    if-nez v3, :cond_61

    if-eqz v4, :cond_61

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403a1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x10403a2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x96b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialog$40;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$40;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x1

    :try_start_58
    sput-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5e

    monitor-exit v5

    return v7

    :cond_5c
    const/4 v4, 0x0

    goto :goto_16

    :catchall_5e
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_61
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .registers 6

    const/4 v3, 0x1

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_1c

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-ne v1, v2, :cond_1e

    :cond_1c
    move v2, v3

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private isTSafeLock()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    if-nez v3, :cond_7

    return v2

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    const-string/jumbo v0, "off_menu_setting"

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_21

    :goto_20
    return v1

    :cond_21
    move v1, v2

    goto :goto_20
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

.method private isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    new-array v0, v6, [I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    aget v7, v0, v5

    int-to-float v7, v7

    sub-float v2, v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    aget v7, v0, v4

    int-to-float v7, v7

    sub-float v3, v6, v7

    sget-boolean v6, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    if-eqz v6, :cond_24

    const v1, 0x3fa66666    # 1.3f

    :cond_24
    cmpg-float v6, v2, v8

    if-ltz v6, :cond_32

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v2, v6

    if-lez v6, :cond_35

    :cond_32
    :goto_32
    xor-int/lit8 v4, v4, 0x1

    return v4

    :cond_35
    cmpg-float v6, v3, v8

    if-ltz v6, :cond_32

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v3, v6

    if-gtz v6, :cond_32

    move v4, v5

    goto :goto_32
.end method

.method private isUSA()Z
    .registers 3

    const-string/jumbo v0, "USA"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "ATT"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "TMB"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "SPR"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "VMU"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "MTR"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "USC"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "BST"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "XAS"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "LRA"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "SPT"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "CSP"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "AIO"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "TFN"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string/jumbo v0, "CRI"

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_ae
    return v0

    :cond_af
    const/4 v0, 0x1

    goto :goto_ae
.end method

.method private isVoiceAssistantOn()Z
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1e

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1c

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isVoiceCapable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method private makeActionsItemView(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;
    .registers 24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v14, v1, v2, v15}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v12

    const v14, 0x1020006

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v14, 0x10202f9

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x10202fc

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x10202d6

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerOffIconResId:I

    if-ne v7, v14, :cond_155

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmPowerOffIconResId:I

    sget v16, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSafeModeIconResId:I

    sget v16, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7c
    :goto_7c
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_174

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v14

    add-int/lit8 v15, p2, 0x1

    sub-int/2addr v14, v15

    if-eqz v14, :cond_a9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDivider:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_a9
    :goto_a9
    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12}, Landroid/view/View;->bringToFront()V

    if-eqz v8, :cond_154

    if-eqz p3, :cond_db

    const v14, 0x10204ed

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v14, :cond_db

    sget-boolean v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_db

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v13, :cond_db

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_DATAMODE_ACTION:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_db

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setHeight(I)V

    :cond_db
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$19;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$20;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v14, Lcom/android/systemui/globalactions/GlobalActionsDialog$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$21;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isVoiceAssistantOn()Z

    move-result v14

    if-eqz v14, :cond_19d

    const-string/jumbo v14, "GlobalActionsDialog"

    const-string/jumbo v15, "AccessibilityManager Enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    sget v15, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    const v16, 0x1080358

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_12c
    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const-wide/16 v16, 0x258

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v16, 0x3ebd70a4    # 0.37f

    const/16 v17, 0x0

    const v18, 0x3e99999a    # 0.3f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-direct/range {v15 .. v19}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_154
    return-object v12

    :cond_155
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartIconResId:I

    if-ne v7, v14, :cond_7c

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConfirmRestartIconResId:I

    sget v16, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_7c

    :cond_174
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v14

    add-int/lit8 v15, p2, 0x1

    sub-int/2addr v14, v15

    if-eqz v14, :cond_a9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemDividerLand:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_a9

    :cond_19d
    const-string/jumbo v14, "GlobalActionsDialog"

    const-string/jumbo v15, "AccessibilityManager Disabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    sget v15, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sCurrentDensity:I

    const v16, 0x1080359

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12c
.end method

.method private makeActionsItems()V
    .registers 16

    const v14, 0x10403a9

    const/16 v13, 0x32

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeAction;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$22;

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_15b

    const v2, 0x1080a93

    :goto_1c
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_160

    const v3, 0x1080a93

    :goto_23
    const v4, 0x10403b4

    const v5, 0x104039f

    const v6, 0x104039e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$22;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;

    const v2, 0x1080aa1

    const v3, 0x1080aa2

    const v4, 0x10403c7

    const v5, 0x10403be

    const v6, 0x10403ba

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$24;

    const v2, 0x1080aa9

    const v3, 0x1080aa8

    const v4, 0x10403cb

    const v5, 0x10403c6

    const v6, 0x10403c5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$24;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSubScreenAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_165

    const v2, 0x1080a95

    :goto_6c
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_16a

    const v3, 0x1080a95

    :goto_73
    const v4, 0x10403ca

    const v5, 0x10403c4

    const v6, 0x10403c3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v11, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setGravity(I)V

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$26;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$26;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$27;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$27;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_16f

    const v2, 0x1080422

    :goto_fd
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_173

    const v3, 0x1080422

    :goto_104
    const v4, 0x10403b5

    move-object v1, p0

    move v5, v14

    move v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIIILandroid/app/AlertDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_177

    const v0, 0x1080a9e

    :goto_118
    const v2, 0x10403ab

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$29;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRestartAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

  	invoke-virtual  {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->grxBuildCustomButtons()V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_15a

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSBikeInstalled()Z

    move-result v0

    if-eqz v0, :cond_15a

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$30;

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_17b

    const v2, 0x1080a90

    :goto_133
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_17f

    const v3, 0x1080a90

    :goto_13a
    const v4, 0x104038c

    const v5, 0x1040390

    const v6, 0x104038f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$30;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_15a
    return-void

    :cond_15b
    const v2, 0x1080a92

    goto/16 :goto_1c

    :cond_160
    const v3, 0x1080a92

    goto/16 :goto_23

    :cond_165
    const v2, 0x1080a94

    goto/16 :goto_6c

    :cond_16a
    const v3, 0x1080a94

    goto/16 :goto_73

    :cond_16f
    const v2, 0x1080421

    goto :goto_fd

    :cond_173
    const v3, 0x1080421

    goto :goto_104

    :cond_177
    const v0, 0x1080a9b

    goto :goto_118

    :cond_17b
    const v2, 0x1080aa3

    goto :goto_133

    :cond_17f
    const v3, 0x1080aa3

    goto :goto_13a
.end method

.method private notifyStateToCocktailBar()V
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "notifyStateToCocktailBar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    :cond_20
    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isInAirplaneModeFromSettings()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_d
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    :cond_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_d
.end method

.method private onToggleDatamode()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_12
    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_20

    monitor-exit v0

    :goto_15
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f
    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_23
    sput-boolean v4, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    goto :goto_15
.end method

.method private performItemLongClickForSafemode(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    if-eqz v1, :cond_20

    invoke-direct {p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->setSafemodeIcon(Landroid/view/View;)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->actionClicked(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    goto :goto_1f
.end method

.method private prepareDialog()V
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateToggleActionState()V

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    const/16 v2, 0x96b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_e
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v1, :cond_21

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_21
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->registerSecureLockReceiver()V

    return-void

    :cond_25
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    const/16 v2, 0x833

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_e
.end method

.method private registerBixbyReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    const-string/jumbo v3, "GlobalActionsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimServiceState:[I

    const/4 v0, 0x0

    :goto_41
    iget v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    if-ge v0, v3, :cond_93

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_69

    aget v1, v2, v6

    if-lez v1, :cond_6c

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_65
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimServiceState:[I

    aput v6, v3, v0

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_6c
    invoke-direct {p0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_8e

    invoke-direct {p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSimCardInserted(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8e

    if-nez v0, :cond_8e

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_65

    :cond_8e
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_65

    :cond_93
    return-void
.end method

.method private registerSecureLockReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreQuickPanelBackground(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    :cond_9
    return-void

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBendedPendingIntent()V
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private setSafemodeIcon(Landroid/view/View;)V
    .registers 21

    const v14, 0x10202d6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v14, 0x102000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x10204ed

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const v15, 0x10201e6

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v14, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x10202f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x10202fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_5a

    return-void

    :cond_5a
    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateDescViewHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsTablet:Z

    if-eqz v14, :cond_e6

    const v3, 0x104039d

    :goto_71
    const v14, 0x10403ac

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string/jumbo v14, "alpha"

    const/4 v15, 0x0

    const/16 v16, 0xff

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v7, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string/jumbo v14, "alpha"

    const/16 v15, 0xff

    const/16 v16, 0x0

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-string/jumbo v14, "alpha"

    const/16 v15, 0xff

    const/16 v16, 0x0

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v14, 0xc8

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v14, 0x12c

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v15, 0x3e2e147b    # 0.17f

    const v16, 0x3e2e147b    # 0.17f

    const v17, 0x3e4ccccd    # 0.2f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v14 .. v18}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_e6
    const v3, 0x104039c

    goto :goto_71
.end method

.method private showConfirmDialog(Landroid/view/View;ZZ)V
    .registers 19

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    const v2, 0x10204ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v11, v1, [I

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_26
    if-eqz p3, :cond_a2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_90

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_60
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v1, :cond_86

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    int-to-float v2, v12

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    :cond_86
    :goto_86
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    return-void

    :cond_8a
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_26

    :cond_90
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_60

    :cond_a2
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemWidthLand:I

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginStartAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x0

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionYLand:F

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGlobalActionsFrameLayout:Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_f6

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_e9
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    goto :goto_86

    :cond_f6
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_e9
.end method

.method private showToast(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method private unregisterDesktopModeManagerListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_b
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneCount:I

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method private updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V
    .registers 14

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v9, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v10, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-eq v9, v10, :cond_17

    iget-object v9, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v10, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    if-ne v9, v10, :cond_a5

    :cond_17
    const/4 v6, 0x1

    :goto_18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_ab

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x10204ed

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x10202d6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_a1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledIconResId:I

    if-ne v9, v10, :cond_a1

    if-eqz v7, :cond_a1

    if-eqz v6, :cond_a8

    iget v9, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_63
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sResource:Landroid/content/res/Resources;

    const v11, 0x1040397

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_a5
    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_a8
    iget v9, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_63

    :cond_ab
    return-void
.end method

.method private updateDescViewHeight(Landroid/view/View;I)V
    .registers 11

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginTopAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsClearCover:Z

    if-eqz v1, :cond_43

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForClearCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_3d
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_43
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthForSViewCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3d

    :cond_48
    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3d

    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getMarginStartAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItemMaxWidthLand:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3d
.end method

.method private updateToggleActionState()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_d
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :cond_21
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_57

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v1, "getSealedState"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_61
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_9a

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isSBikeInstalled()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b5

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->notifyDataSetChanged()V

    :cond_a3
    return-void

    :cond_a4
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDataNetworkState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto/16 :goto_d

    :cond_aa
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mProKioskAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    goto :goto_57

    :cond_b2
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_61

    :cond_b5
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBikeModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->updateActions(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;)V

    goto :goto_9a
.end method

.method private updateWindowBlur(F)V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public grxBuildCustomButtons()V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "drawable"

    const-string v1, "grx_pow_recovery"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v2, "string"

    const-string v1, "gs_reb_recovery"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GrxRecovery;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$GrxRecovery;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mGrxRecoveryAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    return-void
.end method

.method isDialogShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->isShowing()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v1, :cond_11

    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_11} :catch_39

    :cond_11
    :goto_11
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_1c

    :try_start_15
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1c} :catch_41

    :cond_1c
    :goto_1c
    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsCoverOpen:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    if-nez v1, :cond_4c

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_28
    sput-boolean v2, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirming:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_49

    monitor-exit v1

    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->unRegisterSecureLockReceiver()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->unRegisterBixbyReceiver()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->unregisterDesktopModeManagerListener()V

    sput-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v1, "GlobalActionsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catch_41
    move-exception v0

    const-string/jumbo v1, "GlobalActionsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catchall_49
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_4c
    sput-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsSecondConfirming:Z

    goto :goto_2b
.end method

.method public showDialog(ZZ)V
    .registers 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isGlobalActionConfirming()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v4, "getPowerMenuLockedState"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz p1, :cond_47

    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const-string/jumbo v2, "0001"

    const-string/jumbo v4, "null"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->initValueForShow()V

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_5e

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$UIUpdateHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$UIUpdateHandler;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$UIUpdateHandler;)V

    iput-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    :cond_5e
    sput-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsAirplaneConfirmDialogExist:Z

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    if-eqz v2, :cond_fa

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    :goto_6e
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    if-nez v2, :cond_bc

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_bc

    const-string/jumbo v2, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v2, :cond_fd

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f9

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v3, Lcom/android/systemui/globalactions/GlobalActionsDialog;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsSafeModeEnabled:Z

    :cond_f9
    :goto_f9
    return-void

    :cond_fa
    move v2, v3

    goto/16 :goto_6e

    :cond_fd
    const-string/jumbo v2, "GlobalActionsDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsFirstCreated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsFirstCreated:Z

    if-eqz v2, :cond_122

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->checkAirplaneModeOnOff()V

    iput-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsFirstCreated:Z

    :cond_122
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    goto :goto_f9
.end method
