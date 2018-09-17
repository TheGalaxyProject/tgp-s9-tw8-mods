.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$1;,
        Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$CarModeReceiver;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;,
        Lcom/android/server/InputMethodManagerService$UserReceiver;,
        Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_KMS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.KMS_KEYBOARD"

.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final ACTION_PSS_EVENT:Ljava/lang/String; = "com.sec.android.sidesync.action.PSS_KEYBOARD"

.field private static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field private static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field private static final AUXILIARAY_EMOTICON_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

.field private static final BIXBY_DICT:Ljava/lang/String; = "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

.field private static final CHINESE_KEYPAD:Ljava/lang/String; = "com.samsung.inputmethod/.SamsungIME"

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final EXTRA_KMS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_PSS_STATE:Ljava/lang/String; = "device_state"

.field private static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x60800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0xc000001

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field private static final JAPANESE_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

.field static final LAST_USED_INPUT_METHOD:Ljava/lang/String; = "last_used_input_method"

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_MINIMIZE_SOFT_INPUT:I = 0x400

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNDO_MINIMIZE_SOFT_INPUT:I = 0x401

.field static final MSG_UPDATE_FLOATING_STATE:I = 0x3fe

.field static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field static final NOTI_TAG:Ljava/lang/String; = "InputMethodManagerService_Noti"

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final PACHGAE_SAMSUNG_KEYPAD_NEURAL:Ljava/lang/String; = "com.sec.android.inputmethod.beta"

.field private static final PACKAGE_SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final PACKAGE_SAMSUNG_KEYPAD_JAPAN:Ljava/lang/String; = "com.sec.android.inputmethod.iwnnime.japan"

.field private static final SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field private static final SAMSUNG_KEYPAD_NEURAL:Ljava/lang/String; = "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field private static final SWITCHING_DIALOG_CANCEL:Ljava/lang/String; = "com.android.server.inputmethodmanagerservice.SWITCHING_DIALOG_CANCEL"

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static VAL_NO_MICROPHONE:Ljava/lang/String;

.field private static VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

.field private static keyboardState:I

.field private static mAccessControlEnable:Z

.field private static mAccessControlKeyboardBlockEnable:Z

.field private static mBTKeyboardCount:I

.field private static mDefaultSIP:Ljava/lang/String;

.field private static mDeviceDefaultThemeType:Ljava/lang/String;

.field private static mEnabledKCMFeatureForHWKeyboard:Z

.field private static mFloatingForMultiWindow:Z

.field private static mInputMethodSwitchDisable:Z

.field private static mUSBKeyboardCount:I

.field private static mbWACOMPen:Z

.field private static prevAutoMode:I


# instance fields
.field private final DEBUG_HARDWARE_KEYBOARD:Z

.field private final HID_BT:I

.field private final KEYBOARD_BT:I

.field private final KEYBOARD_DOCK:I

.field private final KEYBOARD_EXTERNAL:I

.field private final KEYBOARD_KMS:I

.field private final KEYBOARD_POGO:I

.field private final KEYBOARD_PSS:I

.field private final KEYBOARD_UNDEFINED:I

.field private final KEYBOARD_USB:I

.field private curImeId_for_menu:Ljava/lang/String;

.field private isKnoxKeypadUsed:Z

.field private knoxV2Enabled:Z

.field private legacyKnoxProcess:I

.field private mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

.field private mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

.field mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentFocusedUserId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field private mForcedtoSecureKeypad:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mImeInTransition:Z

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field private mInitialUserSwitch:Z

.field mInputShown:Z

.field final mIsFolderModel:Z

.field mIsInteractive:Z

.field private mIsPersona:Z

.field mIsScreenPinnedState:Z

.field private mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

.field public mMobilekeyboardCheckedItem:I

.field private mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private mMobilekeyboardSubtypeIds:[I

.field private mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNeedToExplicitallyCall:Z

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPrevInputMethodForCarMode:Ljava/lang/String;

.field private mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field final mRes:Landroid/content/res/Resources;

.field private mSecureKeypadEnabled:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field mShowHWR:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field private final mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mStartInputMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$StartInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Landroid/view/WindowManagerInternal;

.field private notificationcontrol_lock:Z

.field private notificationcontrol_release:Z

.field private switchingFromVoice:Z


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/InputMethodManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19()I
    .registers 1

    sget v0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    return-object v0
.end method

.method static synthetic -get20()I
    .registers 1

    sget v0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic -get5()I
    .registers 1

    sget v0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic -get9()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    return v0
.end method

.method static synthetic -set0(I)I
    .registers 1

    sput p0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/InputMethodManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/InputMethodManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic -set3(I)I
    .registers 1

    sput p0, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    return p0
.end method

.method static synthetic -set4(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(I)I
    .registers 1

    sput p0, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    return p0
.end method

.method static synthetic -set7(I)I
    .registers 1

    sput p0, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/InputMethodManagerService;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->handleKnoxKeyboard(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/InputMethodManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->resetBTKeyboardState()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/InputMethodManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setDefaultInputMethod()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/InputMethodManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->setSpellCheckerEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/InputMethodManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isKnoxProcessRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/InputMethodManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/InputMethodManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->hideImeNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, "nm"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

    const-string/jumbo v0, "noMicrophoneKey"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    sput v1, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    sput v1, Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->mEnabledKCMFeatureForHWKeyboard:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    sput-boolean v1, Lcom/android/server/InputMethodManagerService;->mFloatingForMultiWindow:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->DEBUG_HARDWARE_KEYBOARD:Z

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_UNDEFINED:I

    iput v6, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_EXTERNAL:I

    iput v6, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_DOCK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_BT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_USB:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->HID_BT:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_PSS:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_KMS:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->KEYBOARD_POGO:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/InputMethodManagerService$StartInputHistory;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    iput v4, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    new-instance v0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    new-instance v0, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    new-instance v2, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v0, p1, v1, v2, v6}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.input_methods"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10409dc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.allowDuringSetup"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10804b4

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v2, "sys"

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    const/4 v5, 0x0

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mForcedtoSecureKeypad:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->curImeId_for_menu:Ljava/lang/String;

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->switchingFromVoice:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->isKnoxKeypadUsed:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_lock:Z

    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->notificationcontrol_release:Z

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_1bd

    const-string/jumbo v0, "2.0"

    const-string/jumbo v1, "version"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    :cond_1bd
    :try_start_1bd
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_1bd .. :try_end_1c7} :catch_258

    :goto_1c7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sput v12, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->registerSamsungAdditionalReceviers()V

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial default ime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mImeSelectedOnBoot :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v12, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CocktailBarService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    const-string/jumbo v0, "multiwindow"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    :catch_258
    move-exception v8

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v8}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c7
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    :cond_4
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private calledFromValidUser()Z
    .registers 9

    const/16 v7, 0x3e8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v0, v2

    if-eqz v2, :cond_15

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_15
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_18
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_30

    move-result v0

    monitor-exit v4

    :cond_1f
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-eqz v0, :cond_2f

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_2f
    return v5

    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_33
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "calledFromValidUser - Knox case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_46

    if-ne v0, v2, :cond_47

    :cond_46
    return v5

    :cond_47
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    if-eq v3, v2, :cond_46

    :cond_4b
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_62

    return v5

    :cond_57
    if-eq v1, v7, :cond_61

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_61
    return v5

    :cond_62
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_e

    return v3

    :cond_e
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_54

    :cond_14
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " due to an invalid token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    const/4 v0, 0x1

    return v0
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_29

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_d

    :cond_29
    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v2, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_44

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_44
    if-nez v9, :cond_4e

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_4e
    invoke-static {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8d

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    :goto_5c
    if-nez v9, :cond_6f

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_6f

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_6f
    if-nez v9, :cond_79

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    :cond_79
    if-eqz v9, :cond_d

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    move-object v6, v2

    move-object v7, v9

    :cond_85
    if-eqz v6, :cond_a2

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11

    :cond_8d
    move-object v10, v8

    goto :goto_5c

    :cond_8f
    if-nez v1, :cond_d

    move-object v6, v2

    move-object v7, v9

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    const/4 v1, 0x1

    goto/16 :goto_d

    :cond_a2
    const/4 v11, 0x0

    return-object v11
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_19

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_e

    :try_start_7
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_1a

    :goto_c
    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    :cond_e
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_19

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v4, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_c
.end method

.method private getAppShowFlags()I
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    if-eqz v1, :cond_e

    const/16 v0, 0x10

    goto :goto_6

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method private getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    if-nez p2, :cond_4

    return-object v1

    :cond_4
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    const-string/jumbo v1, "DCM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "com.sevenknowledge.sevennotesproduct.samsung/com.sevenknowledge.mazec.MazecIms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    :cond_3c
    return-object v0

    :cond_3d
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v4, :cond_8

    return-object v6

    :cond_8
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    return-object v6

    :cond_21
    if-eqz v3, :cond_27

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_4b

    :cond_27
    :goto_27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_78

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_5a

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    :cond_48
    :goto_48
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v4

    :cond_4b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_48

    goto :goto_27

    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_48

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v5, "keyboard"

    invoke-static {v4, v0, v5, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v4, :cond_48

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v4, v0, v6, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_48

    :cond_78
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_48
.end method

.method private getDeviceThemeFromSystemProperties()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImeShowFlags()I
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_d

    const/4 v0, 0x3

    :cond_6
    :goto_6
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x10

    :cond_c
    return v0

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method private getLegacyKeyguardVisibleUserId()I
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_58

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_5b

    move-result v3

    return v3

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_5b
    move-exception v0

    :cond_5c
    const/4 v3, -0x1

    return v3
.end method

.method private getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v3, :cond_5f

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5f

    const/4 v1, 0x0

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_32

    const-string/jumbo v3, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_32
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSamsungImeForKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v2

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_58

    const-string/jumbo v3, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_58
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_55

    return-object v2

    :cond_5f
    return-object v5
.end method

.method private handleKnoxKeyboard(II)Z
    .registers 16

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "windowGainedFocus: destinationUserId (getCallingUid) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "windowGainedFocus: currentUserId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "windowGainedFocus: mCurrentFocusedUserId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    if-eqz v9, :cond_126

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v6

    const/4 v1, 0x0

    :goto_67
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_126

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v9

    if-eqz v9, :cond_122

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_122

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v9

    if-eqz v9, :cond_122

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_122

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_ae
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "windowGainedFocus : Legacy container keyguard case. currentUserId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v4, v9, :cond_e6

    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v11, "windowGainedFocus : current user is Knox. do nothing."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_ae .. :try_end_e3} :catchall_11f

    const/4 v9, 0x0

    monitor-exit v10

    return v9

    :cond_e6
    :try_start_e6
    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v11, "windowGainedFocus : current user is not Knox. call switchUserLocked()"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11c
    .catchall {:try_start_e6 .. :try_end_11c} :catchall_11f

    const/4 v9, 0x1

    monitor-exit v10

    return v9

    :catchall_11f
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_122
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_67

    :cond_126
    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_12e
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p2

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "windowGainedFocus : lock - currentUserId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " destinationUserId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_161

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v9

    if-nez v9, :cond_169

    :cond_161
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v9

    if-eqz v9, :cond_1bf

    if-nez p1, :cond_1bf

    :cond_169
    if-eq p2, p1, :cond_1f4

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "windowGainedFocus : Current user = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Destination user = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - So switch user"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v9

    if-eqz v9, :cond_1a0

    const/4 p1, 0x0

    :cond_1a0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v9

    if-nez v9, :cond_1a7

    const/4 p1, 0x0

    :cond_1a7
    if-eqz v5, :cond_22d

    if-nez p1, :cond_22d

    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->isPwdChangeRequested(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_22d

    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v11, "windowGainedFocus: Skipping switch to user 0 due to COM"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_12e .. :try_end_1bc} :catchall_281

    const/4 v9, 0x0

    monitor-exit v10

    return v9

    :cond_1bf
    :try_start_1bf
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_1cb

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-nez v9, :cond_169

    :cond_1cb
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v9

    if-eqz v9, :cond_1d7

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z
    :try_end_1d4
    .catchall {:try_start_1bf .. :try_end_1d4} :catchall_281

    move-result v9

    if-nez v9, :cond_169

    :cond_1d7
    if-nez p1, :cond_1f4

    if-eq p2, p1, :cond_1f4

    :try_start_1db
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_237

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_237

    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v11, "windowGainedFocus : Sub user case. Do nothing."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1f4} :catch_27b
    .catchall {:try_start_1db .. :try_end_1f4} :catchall_281

    :cond_1f4
    :goto_1f4
    monitor-exit v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "windowGainedFocus : mCurrentFocusedUserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " and mSecureKeypadEnabled - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", userSwitched - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_22d
    if-eq p2, p1, :cond_1f4

    :try_start_22f
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_235
    .catchall {:try_start_22f .. :try_end_235} :catchall_281

    const/4 v8, 0x1

    goto :goto_1f4

    :cond_237
    :try_start_237
    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "windowGainedFocus : Current user = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Destination user = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " but "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not Knox. switch to owner."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->switchSpellChecker(I)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_278} :catch_27b
    .catchall {:try_start_237 .. :try_end_278} :catchall_281

    const/4 v8, 0x1

    goto/16 :goto_1f4

    :catch_27b
    move-exception v0

    :try_start_27c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27f
    .catchall {:try_start_27c .. :try_end_27f} :catchall_281

    goto/16 :goto_1f4

    :catchall_281
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private handleSetInteractive(Z)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_5
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_38

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    :goto_d
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v2, :cond_3a

    move v2, v0

    :goto_27
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    if-eqz v6, :cond_3c

    :goto_2b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v6, 0xbcc

    invoke-virtual {v5, v6, v2, v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3e

    :cond_36
    monitor-exit v3

    return-void

    :cond_38
    move v2, v1

    goto :goto_d

    :cond_3a
    move v2, v1

    goto :goto_27

    :cond_3c
    move v0, v1

    goto :goto_2b

    :catchall_3e
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private handleSwitchInputMethod(Z)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v5, "can not switch inputmethod in DEX mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_6e

    monitor-exit v4

    return-void

    :cond_16
    :try_start_16
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3, v6, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_6e

    move-result-object v1

    if-nez v1, :cond_2d

    monitor-exit v4

    return-void

    :cond_2d
    :try_start_2d
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_6e

    if-nez v0, :cond_46

    monitor-exit v4

    return-void

    :cond_46
    :try_start_46
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    if-nez v3, :cond_68

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    :goto_61
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_6e

    :cond_66
    monitor-exit v4

    return-void

    :cond_68
    :try_start_68
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_6e

    goto :goto_61

    :catchall_6e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private hideImeNotification()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "InputMethodManagerService_Noti"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x104091d

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    :cond_18
    return-void
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_11

    const-string/jumbo v2, "Active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_11
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_23

    if-nez v0, :cond_1d

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string/jumbo v2, "Visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isChineseRegion()Z
    .registers 3

    const-string/jumbo v0, "none"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    :cond_18
    const-string/jumbo v0, "CHINA"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "HONG KONG"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "TAIWAN"

    sget-object v1, Lcom/android/server/InputMethodManagerService;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    const/4 v0, 0x1

    return v0

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method private isCocktailBarDisplayed()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CocktailBarService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    :cond_12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    if-nez v1, :cond_32

    const/4 v0, 0x0

    :cond_17
    :goto_17
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCocktailBarDisplayed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_32
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getCocktailBarWindowType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    const/4 v0, 0x0

    goto :goto_17

    :cond_3d
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getCocktailBarWindowType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method

.method private isDeskTopMode()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_18
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "NOT IN KNOX DESKTOP MODE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_22
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "mDesktopModeManager null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isDeviceBlackTheme()Z
    .registers 3

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/InputMethodManagerService;->mDeviceDefaultThemeType:Ljava/lang/String;

    const-string/jumbo v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private isHWAccessoryKeyboard()Z
    .registers 3

    const/4 v0, 0x0

    sget v1, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isImeSwitcherDisabledPackage()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSKBDPacakge(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "isImeSwitcherDisabledPackage : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_19
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "mCurAttribute is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "isImeSwitcherDisabledPackage : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isInstalledInputMethod(Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_2f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    return v4

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    return v5
.end method

.method private isJapaneseRegion()Z
    .registers 3

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string/jumbo v1, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    return v1

    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method private isKeyguardLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isKnoxProcessRunning(I)Z
    .registers 11

    const/4 v8, 0x1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "enabled_input_methods"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_37

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_39

    move-result v5

    if-ne v5, p1, :cond_34

    return v8

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    const/4 v6, 0x0

    return v6

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v8
.end method

.method private isKoreaRegion()Z
    .registers 3

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private isPasswordInputType(I)Z
    .registers 5

    const/4 v1, 0x1

    and-int/lit16 v0, p1, 0xfff

    const/16 v2, 0x81

    if-eq v0, v2, :cond_b

    const/16 v2, 0xe1

    if-ne v0, v2, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    const/16 v2, 0x12

    if-eq v0, v2, :cond_b

    const/4 v1, 0x0

    goto :goto_b
.end method

.method private isPwdChangeRequested(I)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_2
    const-string/jumbo v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_14

    move-result v3

    if-lez v3, :cond_18

    return v5

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_27

    move-result v3

    if-eqz v3, :cond_2b

    return v5

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    return v4
.end method

.method private isSKBDPacakge(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "com.sec.android.inputmethod"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "com.sec.android.inputmethod.beta"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v2

    :cond_27
    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    return v2

    :cond_31
    return v3
.end method

.method private isSamsungImeForKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v2

    :cond_27
    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    return v2

    :cond_31
    return v3
.end method

.method private isSamsungWorkspace(I)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSamsungWorkspace(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isScreenLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_5

    return v7

    :cond_5
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_c

    return v6

    :cond_c
    const-string/jumbo v5, "mum_container_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v4

    if-nez v4, :cond_23

    const-string/jumbo v5, "InputMethodManagerService"

    const-string/jumbo v6, "IKnoxContainerManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_23
    :try_start_23
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getSecureKeyPad(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_54

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_4e} :catch_52

    move-result v5

    if-eqz v5, :cond_3b

    return v6

    :catch_52
    move-exception v0

    return v7

    :cond_54
    return v7
.end method

.method private isSecureIMEKnox(Ljava/lang/String;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 v4, 0x0

    return v4

    :cond_4
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object v0, v1

    :cond_32
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    return v4
.end method

.method private isVoiceInputDisable()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v3, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_3f

    sget-object v3, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Lcom/android/server/InputMethodManagerService;->VAL_NO_MICROPHONE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_21
    const/4 v2, 0x1

    :cond_22
    :goto_22
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Check voice input Disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3d
    const/4 v3, 0x0

    return v3

    :cond_3f
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isPasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    goto :goto_22
.end method

.method private notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_d
    return-void
.end method

.method private refreshImeWindowVis()V
    .registers 14

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_e4

    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_ea

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_e7

    const/4 v1, 0x1

    :goto_14
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v10

    if-nez v10, :cond_24

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKoreaRegion()Z

    move-result v10

    if-eqz v10, :cond_63

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v10, :cond_63

    :cond_24
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ed

    const/4 v5, 0x1

    :goto_2c
    if-eqz v1, :cond_f3

    if-eqz v6, :cond_f0

    move v10, v5

    :goto_31
    xor-int/lit8 v1, v10, 0x1

    :goto_33
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[HARDWARE_KEYBOARD] refreshImeWindowVis : isChineseRegion = true, isFolderPhone= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " isFolderOpen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_f9

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_f6

    move v3, v1

    :goto_6e
    if-eqz v7, :cond_fc

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    :goto_76
    if-eqz v7, :cond_96

    if-eqz v8, :cond_96

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_91

    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_96

    :cond_91
    iget-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v10, :cond_ff

    move v3, v1

    :cond_96
    :goto_96
    if-eqz v3, :cond_103

    if-eqz v1, :cond_101

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    :goto_9c
    if-eqz v3, :cond_105

    const/4 v10, 0x1

    move v11, v10

    :goto_a0
    if-eqz v4, :cond_108

    const/4 v10, 0x2

    :goto_a3
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[HARDWARE_KEYBOARD] refreshImeWindowVis : mImeWindowVis= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " inputVisible = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "haveHardKeyboard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " hardKeyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e4
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_e7
    const/4 v1, 0x0

    goto/16 :goto_14

    :cond_ea
    const/4 v1, 0x0

    goto/16 :goto_14

    :cond_ed
    const/4 v5, 0x0

    goto/16 :goto_2c

    :cond_f0
    const/4 v10, 0x0

    goto/16 :goto_31

    :cond_f3
    const/4 v1, 0x0

    goto/16 :goto_33

    :cond_f6
    const/4 v3, 0x1

    goto/16 :goto_6e

    :cond_f9
    const/4 v3, 0x0

    goto/16 :goto_6e

    :cond_fc
    const/4 v8, 0x0

    goto/16 :goto_76

    :cond_ff
    const/4 v3, 0x1

    goto :goto_96

    :cond_101
    const/4 v4, 0x1

    goto :goto_9c

    :cond_103
    const/4 v4, 0x0

    goto :goto_9c

    :cond_105
    const/4 v10, 0x0

    move v11, v10

    goto :goto_a0

    :cond_108
    const/4 v10, 0x0

    goto :goto_a3
.end method

.method private resetBTKeyboardState()V
    .registers 6

    const/4 v4, 0x0

    sget v1, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v0, v1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    sget v1, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    and-int/lit8 v1, v1, -0x3

    sput v1, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    sget v1, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_brightness_mode"

    sget v3, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    sput v4, Lcom/android/server/InputMethodManagerService;->prevAutoMode:I

    :cond_22
    sput v4, Lcom/android/server/InputMethodManagerService;->mBTKeyboardCount:I

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetBTKeyboardState : keyboardState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    return-void

    :cond_18
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "resetDefaultImeLocked : No default found"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetDefaultImeLocked : Default found, using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, -0x1

    if-eqz v1, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    :try_start_1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_28

    move-result v2

    :cond_23
    :goto_23
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void

    :catch_28
    move-exception v0

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_33

    new-instance v6, Landroid/util/ArraySet;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_10

    :cond_3d
    invoke-static {v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setCurrentInputInfoForAGIF(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 7

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentInputInfo - inputContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eidtorInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " missingMethods : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setCurrentInputInfo(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V

    :cond_39
    return-void
.end method

.method private setDefaultInputMethod()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_29

    :cond_45
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_29

    :cond_6f
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v2, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_29
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    if-nez p1, :cond_16

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_44

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring setInputMethod of uid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " token - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_48
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v5, 0xbe0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_33
    if-eqz p1, :cond_37

    if-gez p2, :cond_4c

    :cond_37
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    :goto_3e
    if-nez p3, :cond_4b

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_48
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_4b
    return-void

    :cond_4c
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_62

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    :cond_62
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    :cond_6e
    const-string/jumbo v1, ""

    goto :goto_48
.end method

.method private setSpellCheckerEnabled(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    :cond_10
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v14, :cond_8

    const/4 v14, 0x0

    return v14

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isImeSwitcherDisabledPackage()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x0

    return v14

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_18

    const/4 v14, 0x0

    return v14

    :cond_18
    sget-boolean v14, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eqz v14, :cond_1e

    const/4 v14, 0x0

    return v14

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-nez v14, :cond_26

    const/4 v14, 0x0

    return v14

    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v14

    if-eqz v14, :cond_2e

    const/4 v14, 0x0

    return v14

    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v14

    if-eqz v14, :cond_36

    const/4 v14, 0x0

    return v14

    :cond_36
    and-int/lit8 v14, p1, 0x1

    if-nez v14, :cond_3c

    const/4 v14, 0x0

    return v14

    :cond_3c
    const/4 v4, 0x3

    and-int/lit8 v14, p1, 0x3

    const/4 v15, 0x3

    if-eq v14, v15, :cond_58

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v14

    if-eqz v14, :cond_58

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v14}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v14

    if-eqz v14, :cond_58

    const/4 v14, 0x0

    return v14

    :cond_58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v14}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v14

    if-eqz v14, :cond_79

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v14, :cond_7f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v14, :cond_7f

    const-string/jumbo v14, "InputMethodManagerService"

    const-string/jumbo v15, "shouldShowImeSwitcherLocked : WIRELESS_AFFORDANCE : return true "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    return v14

    :cond_79
    and-int/lit8 v14, p1, 0x2

    if-nez v14, :cond_7f

    const/4 v14, 0x0

    return v14

    :cond_7f
    const-string/jumbo v14, "InputMethodManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "shouldShowImeSwitcherLocked : checking vis : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v14}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_ac
    if-ge v5, v1, :cond_121

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v6, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e2

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ed

    :cond_e2
    const/4 v14, 0x1

    if-le v12, v14, :cond_ed

    const/4 v12, 0x1

    :cond_e6
    if-nez v12, :cond_108

    add-int/lit8 v9, v9, 0x1

    :cond_ea
    :goto_ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_ed
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ea

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e6

    goto :goto_ea

    :cond_108
    const/4 v8, 0x0

    :goto_109
    if-ge v8, v12, :cond_ea

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v14

    if-nez v14, :cond_11d

    add-int/lit8 v9, v9, 0x1

    move-object v10, v11

    :goto_11a
    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    :cond_11d
    add-int/lit8 v2, v2, 0x1

    move-object v3, v11

    goto :goto_11a

    :cond_121
    const/4 v14, 0x1

    if-ne v9, v14, :cond_12f

    const/4 v14, 0x2

    if-lt v2, v14, :cond_12d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isVoiceInputDisable()Z

    move-result v14

    if-eqz v14, :cond_12f

    :cond_12d
    const/4 v14, 0x0

    return v14

    :cond_12f
    const/4 v14, 0x2

    if-gt v1, v14, :cond_135

    const/4 v14, 0x1

    if-le v2, v14, :cond_15c

    :cond_135
    const-string/jumbo v14, "InputMethodManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "shouldShowImeSwitcherLocked : language count above 2 or auxcount above 1 return true : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    return v14

    :cond_15c
    const/4 v14, 0x1

    if-ge v1, v14, :cond_161

    const/4 v14, 0x0

    return v14

    :cond_161
    const/4 v14, 0x1

    if-gt v9, v14, :cond_167

    const/4 v14, 0x1

    if-le v2, v14, :cond_169

    :cond_167
    const/4 v14, 0x1

    return v14

    :cond_169
    const/4 v14, 0x1

    if-ne v9, v14, :cond_1a3

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1a3

    if-eqz v10, :cond_198

    if-eqz v3, :cond_198

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18d

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v14

    if-nez v14, :cond_18d

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v14

    if-eqz v14, :cond_198

    :cond_18d
    const-string/jumbo v14, "TrySuppressingImeSwitcher"

    invoke-virtual {v10, v14}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_198

    const/4 v14, 0x0

    return v14

    :cond_198
    const-string/jumbo v14, "InputMethodManagerService"

    const-string/jumbo v15, "shouldShowImeSwitcherLocked : nonAuxCount 1, auxCount return true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    return v14

    :cond_1a3
    const/4 v14, 0x0

    return v14
.end method

.method private showConfigureInputMethods()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "input_method_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_19
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2e

    move-result v1

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private showInputMethodMenu()V
    .registers 1

    return-void
.end method

.method private showInputMethodMenu(Z)V
    .registers 61

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isVoiceInputDisable()Z

    move-result v54

    if-eqz v54, :cond_8

    const/16 p1, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v55, v0

    monitor-enter v55

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v26

    if-eqz v26, :cond_4b

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_684

    move-result v54

    if-nez v54, :cond_4d

    :cond_4b
    monitor-exit v55

    return-void

    :cond_4d
    :try_start_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v25

    const/16 v54, -0x1

    move/from16 v0, v41

    move/from16 v1, v54

    if-ne v0, v1, :cond_8e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v16

    if-eqz v16, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v54

    move/from16 v0, v54

    invoke-static {v15, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v41

    :cond_8e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateSecureKeypadList(Ljava/util/List;)V

    const/4 v14, 0x0

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/4 v10, 0x0

    if-eqz v25, :cond_1f5

    const/16 v30, 0x0

    const-string/jumbo v54, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_b0

    const/16 v30, 0x1

    :cond_b0
    const/16 v24, 0x0

    :goto_b2
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v54

    move/from16 v0, v24

    move/from16 v1, v54

    if-ge v0, v1, :cond_155

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v49

    if-eqz v30, :cond_df

    const-string/jumbo v54, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_119

    :cond_df
    const-string/jumbo v54, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_119

    if-eqz v31, :cond_fb

    const-string/jumbo v54, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_119

    :cond_fb
    if-eqz v33, :cond_10a

    const-string/jumbo v54, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_119

    :cond_10a
    if-eqz v32, :cond_125

    const-string/jumbo v54, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_125

    :cond_119
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v24, v24, -0x1

    :cond_122
    :goto_122
    add-int/lit8 v24, v24, 0x1

    goto :goto_b2

    :cond_125
    const-string/jumbo v54, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_135

    const/16 v33, 0x1

    goto :goto_122

    :cond_135
    const-string/jumbo v54, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_145

    const/16 v32, 0x1

    goto :goto_122

    :cond_145
    const-string/jumbo v54, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_122

    const/16 v31, 0x1

    goto :goto_122

    :cond_155
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    new-array v0, v6, [I

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    const/16 v24, 0x0

    :goto_16f
    move/from16 v0, v24

    if-ge v0, v6, :cond_1f5

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v56, v0

    aput-object v56, v54, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v54, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v56, v0

    aput v56, v54, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    aget-object v54, v54, v24

    invoke-virtual/range {v54 .. v54}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_1d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    aget-object v54, v54, v24

    invoke-virtual/range {v54 .. v54}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v54, v0

    aget v47, v54, v24

    const/16 v54, -0x1

    move/from16 v0, v47

    move/from16 v1, v54

    if-eq v0, v1, :cond_1d5

    const/16 v54, -0x1

    move/from16 v0, v41

    move/from16 v1, v54

    if-ne v0, v1, :cond_1da

    if-nez v47, :cond_1da

    :cond_1d5
    move/from16 v10, v24

    :cond_1d7
    :goto_1d7
    add-int/lit8 v24, v24, 0x1

    goto :goto_16f

    :cond_1da
    move/from16 v0, v47

    move/from16 v1, v41

    if-eq v0, v1, :cond_1d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    aget-object v54, v54, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v54

    if-eqz v54, :cond_1d7

    move/from16 v10, v24

    goto :goto_1d7

    :cond_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v54

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v54, v0

    const/16 v56, 0x1

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-object/from16 v54, v0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v54

    if-eqz v54, :cond_3c4

    :cond_219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, p1

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v38

    const/16 v33, 0x0

    const/16 v32, 0x0

    if-eqz v38, :cond_3c0

    if-eqz v25, :cond_3c0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v42, v0

    new-array v0, v6, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    new-array v0, v6, [I

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v11, 0x0

    const/16 v24, 0x0

    :goto_257
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v54

    move/from16 v0, v24

    move/from16 v1, v54

    if-ge v0, v1, :cond_2ef

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_2b9

    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_2b9

    if-eqz v33, :cond_2a6

    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_2b9

    :cond_2a6
    if-eqz v32, :cond_2c7

    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_2c7

    :cond_2b9
    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v6, v6, -0x1

    :cond_2c4
    :goto_2c4
    add-int/lit8 v24, v24, 0x1

    goto :goto_257

    :cond_2c7
    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_2db

    const/16 v33, 0x1

    goto :goto_2c4

    :cond_2db
    invoke-virtual/range {v36 .. v36}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v56, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_2c4

    const/16 v32, 0x1

    goto :goto_2c4

    :cond_2ef
    const/16 v24, 0x0

    :goto_2f1
    move/from16 v0, v24

    if-ge v0, v6, :cond_3c0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    aput-object v54, v42, v24

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v54

    aput-object v54, v44, v24

    aget-object v54, v44, v24

    const-string/jumbo v56, "com.sec.android.inputmethod"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_340

    aget-object v54, v44, v24

    const-string/jumbo v56, "com.google.android.googlequicksearchbox"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_340

    aget-object v54, v44, v24

    const-string/jumbo v56, "com.samsung.android.svoiceime"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_3bc

    :cond_340
    const-string/jumbo v54, "InputMethodManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "IMMS: showInputMethodMenuInternal() -checkitem : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v56, v0

    aput-object v56, v54, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I

    move-object/from16 v54, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v56, v0

    aput v56, v54, v11

    move/from16 v0, v24

    if-ne v10, v0, :cond_3ba

    const-string/jumbo v54, "InputMethodManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "IMMS: showInputMethodMenuInternal() checkedItem==i -checkitem : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " i =  "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    :cond_3ba
    add-int/lit8 v11, v11, 0x1

    :cond_3bc
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2f1

    :cond_3c0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/InputMethodManagerService;->mMobilekeyboardCheckedItem:I

    :cond_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v54

    invoke-static/range {v54 .. v54}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z
    :try_end_3d1
    .catchall {:try_start_4d .. :try_end_3d1} :catchall_684

    move-result v54

    if-eqz v54, :cond_687

    move-object/from16 v39, v13

    :try_start_3d6
    new-instance v54, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v56

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, v54

    invoke-virtual {v13, v14, v0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_3f2
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3f2} :catch_67e
    .catchall {:try_start_3d6 .. :try_end_3f2} :catchall_684

    move-result-object v39

    :goto_3f3
    :try_start_3f3
    new-instance v46, Landroid/view/ContextThemeWrapper;

    const v54, 0x1030223

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_401
    new-instance v54, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v54

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    new-instance v56, Lcom/android/server/InputMethodManagerService$5;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v17

    sget-object v54, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const/16 v56, 0x0

    const v57, 0x101005d

    const/16 v58, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v56

    move-object/from16 v2, v54

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v54, 0x2

    move/from16 v0, v54

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-class v54, Landroid/view/LayoutInflater;

    move-object/from16 v0, v17

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/LayoutInflater;

    const v54, 0x1090143

    const/16 v56, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v54

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z
    :try_end_48a
    .catchall {:try_start_3f3 .. :try_end_48a} :catchall_684

    move-result v28

    const/16 v29, 0x0

    :try_start_48d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v54, v0

    invoke-interface/range {v54 .. v54}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v54

    if-eqz v54, :cond_695

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isDeskTopMode()Z
    :try_end_49c
    .catch Landroid/os/RemoteException; {:try_start_48d .. :try_end_49c} :catch_6aa
    .catchall {:try_start_48d .. :try_end_49c} :catchall_684

    move-result v54

    xor-int/lit8 v29, v54, 0x1

    :goto_49f
    :try_start_49f
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v54, v0

    const v56, 0x10201d7

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v54

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v21, v0

    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getTextSize()F

    move-result v54

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v56

    move-object/from16 v0, v56

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v56, v0

    div-float v22, v54, v56

    const v54, 0x3f99999a    # 1.2f

    cmpl-float v54, v21, v54

    if-lez v54, :cond_4e7

    const v21, 0x3f99999a    # 1.2f

    :cond_4e7
    mul-float v54, v22, v21

    const/16 v56, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v56

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v54, v0

    const v56, 0x10202e0

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v54

    if-eqz v54, :cond_699

    const/16 v54, 0x0

    :goto_50d
    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v54, v0

    const v56, 0x10202e1

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v54

    move-object/from16 v0, v23

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v54, Lcom/android/server/InputMethodManagerService$6;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v54, v0

    const v56, 0x10204be

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    if-eqz v29, :cond_69d

    const/16 v54, 0x0

    :goto_55d
    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v54, v0

    const v56, 0x10204bf

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/Switch;

    if-eqz v29, :cond_6a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowKeyboardButton()Z

    move-result v54

    :goto_583
    move-object/from16 v0, v45

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v54, Lcom/android/server/InputMethodManagerService$7;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Switch;->isChecked()Z

    move-result v54

    if-nez v54, :cond_6a5

    if-eqz v28, :cond_6a5

    const v50, 0x1090145

    :goto_5a5
    new-instance v8, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-object/from16 v0, v17

    move/from16 v1, v50

    move-object/from16 v2, v25

    invoke-direct {v8, v0, v1, v2, v10}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    new-instance v12, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v8, v10, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    new-instance v56, Lcom/android/server/InputMethodManagerService$9;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/server/InputMethodManagerService$9;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Switch;->isChecked()Z

    move-result v54

    if-nez v54, :cond_603

    if-eqz v28, :cond_603

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v54

    const/16 v56, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    const/16 v56, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/16 v48, 0x0

    const/16 v48, 0x7dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iput-object v0, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v54, v0

    or-int/lit8 v54, v54, 0x10

    move/from16 v0, v54

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v54, "Select input method"

    move-object/from16 v0, v54

    invoke-virtual {v9, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v56

    move/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/app/AlertDialog;->show()V
    :try_end_67c
    .catchall {:try_start_49f .. :try_end_67c} :catchall_684

    monitor-exit v55

    return-void

    :catch_67e
    move-exception v20

    :try_start_67f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_682
    .catchall {:try_start_67f .. :try_end_682} :catchall_684

    goto/16 :goto_3f3

    :catchall_684
    move-exception v54

    monitor-exit v55

    throw v54

    :cond_687
    :try_start_687
    new-instance v46, Landroid/view/ContextThemeWrapper;

    const v54, 0x1030223

    move-object/from16 v0, v46

    move/from16 v1, v54

    invoke-direct {v0, v13, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
    :try_end_693
    .catchall {:try_start_687 .. :try_end_693} :catchall_684

    goto/16 :goto_401

    :cond_695
    const/16 v29, 0x0

    goto/16 :goto_49f

    :cond_699
    const/16 v54, 0x8

    goto/16 :goto_50d

    :cond_69d
    const/16 v54, 0x8

    goto/16 :goto_55d

    :cond_6a1
    const/16 v54, 0x0

    goto/16 :goto_583

    :cond_6a5
    const v50, 0x1090144

    goto/16 :goto_5a5

    :catch_6aa
    move-exception v19

    goto/16 :goto_49f
.end method

.method private showInputMethodSubtypeMenu()V
    .registers 1

    return-void
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 11

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1d

    move-result-wide v0

    :try_start_f
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_18

    move-result-object v2

    :try_start_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    monitor-exit v3

    return-object v2

    :catchall_18
    move-exception v2

    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private switchSpellChecker(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->switchUserForKnox(I)V

    :cond_10
    return-void
.end method

.method private switchUserLocked(I)V
    .registers 13

    const/4 v10, 0x0

    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Switching user stage 1/3. newUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " currentUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v7, :cond_d9

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7

    xor-int/lit8 v6, v7, 0x1

    :goto_3d
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, p1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    new-instance v7, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v7, v8, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v7, :cond_8d

    const/4 v7, 0x0

    invoke-virtual {p0, v10, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_86

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    :cond_86
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    :try_start_8a
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_8d} :catch_dc

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_a0

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, p1, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    :cond_a0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    :try_start_a6
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "access_control_enabled"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_e7

    const/4 v4, 0x1

    :goto_bc
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->setAccessControlEnable(Z)V

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "access_control_keyboard_block"

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_e9

    const/4 v5, 0x1

    :goto_d5
    invoke-virtual {p0, v5}, Lcom/android/server/InputMethodManagerService;->setisAccessControlKeyboardBlockEnable(Z)V
    :try_end_d8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a6 .. :try_end_d8} :catch_eb

    :goto_d8
    return-void

    :cond_d9
    const/4 v6, 0x1

    goto/16 :goto_3d

    :catch_dc
    move-exception v2

    const-string/jumbo v7, "InputMethodManagerService"

    const-string/jumbo v8, "Unexpected exception"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    :cond_e7
    const/4 v4, 0x0

    goto :goto_bc

    :cond_e9
    const/4 v5, 0x0

    goto :goto_d5

    :catch_eb
    move-exception v1

    const-string/jumbo v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "switchUserLocked : string not found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .registers 22

    invoke-direct/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v13

    if-nez v13, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-eqz p2, :cond_1d

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1d

    const/16 p2, 0x0

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_f7

    move-result v10

    const/4 v5, 0x0

    :try_start_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v13}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_fc
    .catchall {:try_start_26 .. :try_end_2d} :catchall_f7

    move-result v5

    :goto_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v13, :cond_4d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v5, :cond_c7

    if-eqz v10, :cond_c4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowKeyboardButton()Z

    move-result v13

    :goto_44
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2, v13}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    :cond_4d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v8, :cond_d7

    if-eqz v10, :cond_d7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v14, 0x104091d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v13

    if-nez v13, :cond_ca

    if-eqz v9, :cond_ca

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v14, 0x104091e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v13, :cond_c0

    xor-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1, v14, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_c0
    .catchall {:try_start_2e .. :try_end_c0} :catchall_f7

    :cond_c0
    :goto_c0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c4
    const/4 v13, 0x0

    goto/16 :goto_44

    :cond_c7
    move v13, v10

    goto/16 :goto_44

    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v13, v8, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_85

    :cond_d7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v13, :cond_c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v13, :cond_c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v14}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_f6
    .catchall {:try_start_ca .. :try_end_f6} :catchall_f7

    goto :goto_c0

    :catchall_f7
    move-exception v13

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    :catch_fc
    move-exception v4

    goto/16 :goto_2e
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .registers 44

    const/16 v26, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    const/4 v13, 0x0

    :try_start_18
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_143

    move-result v2

    if-eqz v2, :cond_27

    const/4 v13, 0x1

    :cond_27
    :goto_27
    :try_start_27
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_39} :catch_149

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3d

    const/4 v13, 0x1

    :cond_3d
    :goto_3d
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_8a

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    xor-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_8a

    new-instance v20, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v4, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSecureKeypadEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getLegacyKeyguardVisibleUserId()I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_e0

    if-nez v14, :cond_e0

    const/4 v2, -0x1

    if-eq v9, v2, :cond_e0

    xor-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v30

    if-eqz v30, :cond_b7

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    :cond_b7
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowGainedFocus : Legacy container keyguard case. mSecureKeypadEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v10

    const/16 v31, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_13e

    :try_start_f1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/server/InputMethodManagerService;->handleKnoxKeyboard(II)Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10d

    if-nez v32, :cond_14f

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    :cond_10d
    :goto_10d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    if-nez v3, :cond_15a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13b
    .catchall {:try_start_f1 .. :try_end_13b} :catchall_13b

    :catchall_13b
    move-exception v2

    :try_start_13c
    monitor-exit v33

    throw v2
    :try_end_13e
    .catchall {:try_start_13c .. :try_end_13e} :catchall_13e

    :catchall_13e
    move-exception v2

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_143
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_27

    :catch_149
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3d

    :cond_14f
    :try_start_14f
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z
    :try_end_159
    .catchall {:try_start_14f .. :try_end_159} :catchall_13b

    goto :goto_10d

    :cond_15a
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v2

    if-nez v2, :cond_27a

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Focus gain on non-focused client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calledFromValidUser : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", (mCurFocusedWindow == windowToken) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_248

    const/4 v2, 0x1

    :goto_1c6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", (attribute != null) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p7, :cond_24b

    const/4 v2, 0x1

    :goto_1d4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(mCurClient != cs) : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_24d

    const/4 v2, 0x1

    :goto_1f5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mCurFocusedWindow : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", windowToken : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_220

    if-eqz v32, :cond_24f

    :cond_220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_24f

    if-eqz p7, :cond_24f

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Focus gain on non-focused client, executed a startInputUncheckedLocked()!!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    :try_end_242
    .catch Landroid/os/RemoteException; {:try_start_15a .. :try_end_242} :catch_279
    .catchall {:try_start_15a .. :try_end_242} :catchall_13b

    move-result-object v2

    :try_start_243
    monitor-exit v33
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_13e

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_248
    const/4 v2, 0x0

    goto/16 :goto_1c6

    :cond_24b
    const/4 v2, 0x0

    goto :goto_1d4

    :cond_24d
    const/4 v2, 0x0

    goto :goto_1f5

    :cond_24f
    :try_start_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_273

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Focus gain on non-focused client mCurClient info is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_24f .. :try_end_273} :catch_279
    .catchall {:try_start_24f .. :try_end_273} :catchall_13b

    :cond_273
    :try_start_273
    monitor-exit v33
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_13e

    const/4 v2, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catch_279
    move-exception v18

    :cond_27a
    if-nez v10, :cond_29f

    xor-int/lit8 v2, v32, 0x1

    if-eqz v2, :cond_29f

    :try_start_280
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_299
    .catchall {:try_start_280 .. :try_end_299} :catchall_13b

    :try_start_299
    monitor-exit v33
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_13e

    const/4 v2, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_29f
    :try_start_29f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_2fa

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window already focused, ignoring focus gain of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " attribute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_2f4

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    :try_end_2ee
    .catchall {:try_start_29f .. :try_end_2ee} :catchall_13b

    move-result-object v2

    :try_start_2ef
    monitor-exit v33
    :try_end_2f0
    .catchall {:try_start_2ef .. :try_end_2f0} :catchall_13e

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_2f4
    :try_start_2f4
    monitor-exit v33
    :try_end_2f5
    .catchall {:try_start_2f4 .. :try_end_2f5} :catchall_13e

    const/4 v2, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_2fa
    :try_start_2fa
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_369

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    if-eqz v2, :cond_369

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    if-eqz v2, :cond_488

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_369

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getSecureDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v23

    if-eqz v23, :cond_369

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_369

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-static {v2, v4, v11, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_369
    :goto_369
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    const/16 v4, 0x10

    if-eq v2, v4, :cond_506

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v17

    :goto_37e
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_50a

    const/16 v27, 0x1

    :goto_384
    const/high16 v2, 0x10000

    and-int v2, v2, p4

    if-eqz v2, :cond_50e

    const/16 v28, 0x1

    :goto_38c
    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3b3

    const-string/jumbo v2, "phone"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b3

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    const/16 v4, 0x10

    if-eq v2, v4, :cond_512

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v17

    :cond_3b3
    :goto_3b3
    const/16 v16, 0x0

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowGainedFocus : reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " client="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " inputContext="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " missingMethods="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p9 .. p9}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " attribute="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " nm = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p7, :cond_516

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_411
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " controlFlags=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " softInputMode=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " windowFlags=#"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, p5, 0xf

    packed-switch v2, :pswitch_data_600

    :cond_44e
    :goto_44e
    if-nez v16, :cond_470

    if-eqz p7, :cond_470

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_460

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_460

    const/16 v26, 0x0

    :cond_460
    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v31

    :cond_470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_483

    if-eqz v26, :cond_483

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MultiWindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V
    :try_end_483
    .catchall {:try_start_2fa .. :try_end_483} :catchall_13b

    :cond_483
    :try_start_483
    monitor-exit v33
    :try_end_484
    .catchall {:try_start_483 .. :try_end_484} :catchall_13e

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v31

    :cond_488
    :try_start_488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_369

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_4eb

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4eb

    const/16 v22, 0x0

    :goto_4b7
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_4eb

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v23, :cond_4e8

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e8

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_4e8
    add-int/lit8 v22, v22, 0x1

    goto :goto_4b7

    :cond_4eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "last_used_input_method"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_369

    :cond_506
    const/16 v17, 0x1

    goto/16 :goto_37e

    :cond_50a
    const/16 v27, 0x0

    goto/16 :goto_384

    :cond_50e
    const/16 v28, 0x0

    goto/16 :goto_38c

    :cond_512
    const/16 v17, 0x1

    goto/16 :goto_3b3

    :cond_516
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_411

    :pswitch_51d
    if-eqz v27, :cond_523

    xor-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_534

    :cond_523
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v2

    if-eqz v2, :cond_44e

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    const/16 v26, 0x0

    goto/16 :goto_44e

    :cond_534
    if-eqz v27, :cond_44e

    if-eqz v17, :cond_44e

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_44e

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Unspecified window will show input"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_569

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_557

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v2, v3, :cond_557

    const/16 v26, 0x0

    :cond_557
    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v31

    const/16 v16, 0x1

    :cond_569
    if-nez v28, :cond_44e

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_44e

    :pswitch_574
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to unchanged"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44e

    :pswitch_57f
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_44e

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to hide input going forward"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_44e

    :pswitch_597
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to hide input"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_44e

    :pswitch_5a9
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_44e

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to show input going forward"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_5cc

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v31

    const/16 v16, 0x1

    :cond_5cc
    if-nez v28, :cond_44e

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_44e

    :pswitch_5d7
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v4, "Window asks to always show input"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_5f4

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v31

    const/16 v16, 0x1

    :cond_5f4
    if-nez v28, :cond_44e

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_5fd
    .catchall {:try_start_488 .. :try_end_5fd} :catchall_13b

    goto/16 :goto_44e

    nop

    :pswitch_data_600
    .packed-switch 0x0
        :pswitch_51d
        :pswitch_574
        :pswitch_57f
        :pswitch_597
        :pswitch_5a9
        :pswitch_5d7
    .end packed-switch
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addServiceForDirectPenInput(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_6
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_21

    move-result-object v5

    if-eqz v5, :cond_39

    const/4 v2, 0x0

    :goto_f
    array-length v6, v5

    if-ge v2, v6, :cond_39

    const-string/jumbo v6, "com.sec.android.inputmethod.iwnnime.japan"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v4, 0x1

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catch_21
    move-exception v1

    const-string/jumbo v6, "InputMethodManagerService"

    const-string/jumbo v7, "Failed to get package infos"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    const-string/jumbo v6, "com.sec.android.inputmethod"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v3, 0x1

    goto :goto_1e

    :cond_39
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v6

    if-eqz v6, :cond_41

    if-nez v4, :cond_47

    :cond_41
    if-nez v3, :cond_47

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_d9

    :cond_47
    const-string/jumbo v6, "directpeninputmanagerservice"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox4"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerserviceknox5"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted4"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string/jumbo v6, "directpeninputmanagerservicerestricted5"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    :cond_bc
    const-string/jumbo v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DirectPenInput : AddService : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_d9
    return-void
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .registers 17

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    const/16 v5, 0x3f2

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    :cond_1a
    new-instance v13, Landroid/os/Binder;

    invoke-direct {v13}, Landroid/os/Binder;-><init>()V

    new-instance v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    move v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/InputMethodManagerService$StartInputInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v13, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v9, v6, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    if-eqz p2, :cond_87

    const/4 v4, 0x0

    :goto_4a
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const/16 v2, 0x7d0

    move-object v5, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-nez v1, :cond_67

    const-string/jumbo v1, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    :cond_67
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_6f
    new-instance v7, Lcom/android/internal/view/InputBindResult;

    iget-object v8, v6, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_89

    iget-object v1, v6, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v9

    :goto_7d
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v12, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v7

    :cond_87
    const/4 v4, 0x1

    goto :goto_4a

    :cond_89
    const/4 v9, 0x0

    goto :goto_7d
.end method

.method buildInputMethodListLocked(Z)V
    .registers 29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    const-string/jumbo v24, "InputMethodManagerService"

    const-string/jumbo v25, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v25, "android.view.InputMethod"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v25

    const v26, 0x8080

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v5

    const/4 v15, 0x0

    :goto_71
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_1d2

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v21}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v24, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c9

    const-string/jumbo v24, "InputMethodManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Skipping input method "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": it does not require the permission "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    :goto_c6
    add-int/lit8 v15, v15, 0x1

    goto :goto_71

    :cond_c9
    const-string/jumbo v24, "InputMethodManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Checking "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :try_start_ef
    new-instance v19, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_180

    const/4 v14, 0x1

    :goto_12c
    const-string/jumbo v24, "com.sec.android.inputmethod/.AuxiliaryEmotionKeypad"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_182

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :goto_144
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v24

    if-eqz v24, :cond_190

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_159} :catch_15b

    goto/16 :goto_c6

    :catch_15b
    move-exception v11

    const-string/jumbo v24, "InputMethodManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unable to load input method "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c6

    :cond_180
    const/4 v14, 0x0

    goto :goto_12c

    :cond_182
    :try_start_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_144

    :cond_190
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v24

    if-eqz v24, :cond_1a3

    const-string/jumbo v24, "com.nttdocomo.android.voiceeditor/.standardcommon.IWnnLanguageSwitcher"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1c5

    :cond_1a3
    const-string/jumbo v24, "com.sec.android.indiainputmethod/.SamsungIndiaKeypad"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1c5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    move/from16 v24, v0

    if-nez v24, :cond_c6

    const-string/jumbo v24, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c6

    :cond_1c5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1d0} :catch_15b

    goto/16 :goto_c6

    :cond_1d2
    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v25, "android.view.InputMethod"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v25

    const/16 v26, 0x200

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_1f7
    if-ge v15, v4, :cond_226

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    const-string/jumbo v24, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    :cond_223
    add-int/lit8 v15, v15, 0x1

    goto :goto_1f7

    :cond_226
    if-nez p1, :cond_268

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_238
    if-ge v15, v4, :cond_251

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d2

    const/4 v12, 0x1

    :cond_251
    if-nez v12, :cond_268

    const-string/jumbo v24, "InputMethodManagerService"

    const-string/jumbo v25, "All the enabled IMEs are gone. Reset default enabled IMEs."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1

    const-string/jumbo v24, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_268
    if-eqz p1, :cond_2e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_27f
    if-ge v15, v4, :cond_2e6

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodInfo;

    const-string/jumbo v24, "InputMethodManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "--- enable ime = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v8

    if-eqz v8, :cond_2d6

    const-string/jumbo v24, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d6

    const-string/jumbo v24, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d6

    :goto_2cf
    add-int/lit8 v15, v15, 0x1

    goto :goto_27f

    :cond_2d2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_238

    :cond_2d6
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_2cf

    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_31c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_32c

    const-string/jumbo v24, "InputMethodManagerService"

    const-string/jumbo v25, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v24

    if-eqz v24, :cond_31c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    :cond_31c
    :goto_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    return-void

    :cond_32c
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_31c
.end method

.method public changeFullInputMethod(Z)V
    .registers 2

    return-void
.end method

.method changeKeyboard()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v3, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method changeKeyboardForVZWResetSetting()V
    .registers 5

    :try_start_0
    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    sget-object v3, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    return-void
.end method

.method clearCurMethodLocked()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "clearCurMethodLocked :  mCurMethod null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    :cond_32
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_3d
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    move-result v1

    if-nez v1, :cond_12

    monitor-exit v0

    return-void

    :cond_12
    monitor-exit v0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 15

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v10

    :cond_8
    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "token"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    if-nez p3, :cond_1e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "packageName"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-nez p2, :cond_29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "contentUri"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "content"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "contentUri must have content scheme"

    invoke-direct {v0, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_ca

    if-nez v0, :cond_4c

    monitor-exit v8

    return-object v10

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_79

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " token="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_4c .. :try_end_77} :catchall_ca

    monitor-exit v8

    return-object v10

    :cond_79
    :try_start_79
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " packageName="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_79 .. :try_end_ac} :catchall_ca

    monitor-exit v8

    return-object v10

    :cond_ae
    :try_start_ae
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p2, v7}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/android/server/InputContentUriTokenHandler;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_ca

    monitor-exit v8

    return-object v0

    :catchall_ca
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 18

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "InputMethodManagerService"

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v11

    if-nez v11, :cond_e

    return-void

    :cond_e
    new-instance v10, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_18
    const-string/jumbo v11, "Current Input Method Manager state:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v1, :cond_6f

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  InputMethod #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "    "

    invoke-virtual {v8, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_6f
    const-string/jumbo v11, "  Clients:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Client "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    client="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    inputContext="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    sessionRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    curSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_18 .. :try_end_10d} :catchall_10f

    goto/16 :goto_7f

    :catchall_10f
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_112
    :try_start_112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurMethodId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurClient="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mCurSeq="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurFocusedWindow="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " softInputMode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    invoke-static {v13}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " client="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mHaveConnect="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mBoundToMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurToken="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurIntent="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mEnabledSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mImeWindowVis="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-static {v13}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mShowRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mShowExplicitlyRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mShowForced="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mInputShown="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mInFullscreenMode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mSystemReady="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " mInteractive="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  mSettingsObserver="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "  mSwitchingController:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v11, v10}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    const-string/jumbo v11, "  mSettings:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v13, "    "

    invoke-virtual {v11, v10, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    const-string/jumbo v11, "  mStartInputHistory:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const-string/jumbo v13, "   "

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v13}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_31a
    .catchall {:try_start_112 .. :try_end_31a} :catchall_10f

    monitor-exit v12

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_389

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_326
    iget-object v11, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, p1, v0}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_331
    .catch Ljava/io/IOException; {:try_start_326 .. :try_end_331} :catch_370
    .catch Landroid/os/RemoteException; {:try_start_326 .. :try_end_331} :catch_370

    :goto_331
    if-eqz v6, :cond_35b

    if-eq v4, v6, :cond_35b

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "Dumping input method client in the last focused window just in case."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_350
    iget-object v11, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, p1, v0}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_350 .. :try_end_35b} :catch_390
    .catch Landroid/os/RemoteException; {:try_start_350 .. :try_end_35b} :catch_390

    :cond_35b
    :goto_35b
    const-string/jumbo v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v9, :cond_3c2

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_366
    invoke-interface {v9}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, p1, v0}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_36f
    .catch Ljava/io/IOException; {:try_start_366 .. :try_end_36f} :catch_3a9
    .catch Landroid/os/RemoteException; {:try_start_366 .. :try_end_36f} :catch_3a9

    :goto_36f
    return-void

    :catch_370
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to dump input method client: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_331

    :cond_389
    const-string/jumbo v11, "No input method client."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_331

    :catch_390
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to dump input method client in focused window: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_35b

    :catch_3a9
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to dump input method service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_36f

    :cond_3c2
    const-string/jumbo v11, "No input method service."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_36f
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_d
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 2

    return-void
.end method

.method public getCurrentFocusDisplayID()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_b
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    if-nez p1, :cond_26

    :try_start_10
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    :goto_1e
    if-nez v0, :cond_2f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_39

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_1e

    :cond_2f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_39

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_66

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList : UserHandle.getCallingUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList : mSettings.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInputMethodList : mCurrentFocusedUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_71
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_74
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7d

    monitor-exit v1

    return-object v0

    :catchall_7d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 10

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_8

    return-object v8

    :cond_8
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_b
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_56

    move-result v5

    if-eqz v5, :cond_29

    :cond_27
    monitor-exit v6

    return-object v8

    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_56

    if-nez v2, :cond_37

    monitor-exit v6

    return-object v8

    :cond_37
    :try_start_37
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    if-ltz v4, :cond_4b

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_48} :catch_53
    .catchall {:try_start_37 .. :try_end_48} :catchall_56

    move-result v5

    if-lt v4, v5, :cond_4d

    :cond_4b
    monitor-exit v6

    return-object v8

    :cond_4d
    :try_start_4d
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_50} :catch_53
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    move-result-object v5

    monitor-exit v6

    return-object v5

    :catch_53
    move-exception v0

    monitor-exit v6

    return-object v8

    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .registers 9

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_25

    const-string/jumbo v6, "voice"

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_5a

    :cond_23
    monitor-exit v7

    return-object v3

    :cond_25
    :try_start_25
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_5a

    goto :goto_4a

    :catchall_5a
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5d
    monitor-exit v7

    return-object v3
.end method

.method public getWACOMPen()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 28

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_4d4

    const/4 v3, 0x0

    return v3

    :sswitch_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_53a

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unknown subtype picker mode = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :pswitch_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    move/from16 v21, v0

    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    const/4 v3, 0x1

    return v3

    :pswitch_43
    const/16 v21, 0x1

    goto :goto_3a

    :pswitch_46
    const/16 v21, 0x0

    goto :goto_3a

    :sswitch_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_6e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v24, "MSG_SHOW_AGAIN_IM_PICKER"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodSubtypeMenu()V

    :cond_6e
    const/4 v3, 0x1

    return v3

    :sswitch_70
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_7d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    const/4 v3, 0x1

    return v3

    :sswitch_82
    :try_start_82
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_4d1

    :goto_8b
    const/4 v3, 0x1

    return v3

    :sswitch_8d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    :try_start_93
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/inputmethod/InputBinding;

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_a2} :catch_4ce

    :goto_a2
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :sswitch_a7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    move/from16 v15, v22

    :try_start_b5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_c3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v15

    :cond_c3
    move/from16 v0, v22

    if-eq v0, v15, :cond_187

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v3

    if-nez v3, :cond_d9

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_187

    :cond_d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_187

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_187

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_187

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3}, Lcom/android/server/statusbar/StatusBarManagerService;->getPanelExpandState()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_187

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    if-ne v3, v13, :cond_139

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v0, v22

    if-ne v3, v0, :cond_139

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/ResultReceiver;

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v3, v0, v1}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_134} :catch_185

    :goto_134
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :cond_139
    :try_start_139
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "MSG_SHOW_SOFT_INPUT : Keyboard switching is in progress. do not show soft input. targetUserId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " focusedUserId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " mCurrentFocusedUserId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentFocusedUserId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " mSettings.getCurrentUserId() = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    :catch_185
    move-exception v14

    goto :goto_134

    :cond_187
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/ResultReceiver;

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v3, v0, v1}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_19e} :catch_185

    goto :goto_134

    :sswitch_19f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    :try_start_1a5
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethod;->updateWacomState(I)V
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1b4} :catch_4cb

    :goto_1b4
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :sswitch_1b9
    :try_start_1b9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethod;->updateFloatingState(I)V
    :try_end_1ca
    .catch Landroid/os/RemoteException; {:try_start_1b9 .. :try_end_1ca} :catch_4c8

    :goto_1ca
    const/4 v3, 0x1

    return v3

    :sswitch_1cc
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    :try_start_1d2
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/ResultReceiver;

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v3, v0, v1}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1d2 .. :try_end_1e5} :catch_4c5

    :goto_1e5
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :sswitch_1ea
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_1f3
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1fc
    .catchall {:try_start_1f3 .. :try_end_1fc} :catchall_1ff

    monitor-exit v3

    const/4 v3, 0x1

    return v3

    :catchall_1ff
    move-exception v24

    monitor-exit v3

    throw v24

    :sswitch_202
    :try_start_202
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethod;->minimizeSoftInput(I)V
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_202 .. :try_end_213} :catch_215

    :goto_213
    const/4 v3, 0x1

    return v3

    :catch_215
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_213

    :sswitch_21a
    :try_start_21a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_223
    .catch Landroid/os/RemoteException; {:try_start_21a .. :try_end_223} :catch_225

    :goto_223
    const/4 v3, 0x1

    return v3

    :catch_225
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_223

    :sswitch_22a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    :try_start_230
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/IBinder;

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_23f
    .catch Landroid/os/RemoteException; {:try_start_230 .. :try_end_23f} :catch_4c2

    :goto_23f
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :sswitch_244
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/view/IInputMethod;

    iget-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Landroid/view/InputChannel;

    :try_start_254
    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputSessionCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v3}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_25d
    .catch Landroid/os/RemoteException; {:try_start_254 .. :try_end_25d} :catch_26d
    .catchall {:try_start_254 .. :try_end_25d} :catchall_27a

    if-eqz v10, :cond_268

    invoke-static/range {v17 .. v17}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_268

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    :cond_268
    :goto_268
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :catch_26d
    move-exception v14

    if-eqz v10, :cond_268

    invoke-static/range {v17 .. v17}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_268

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    goto :goto_268

    :catchall_27a
    move-exception v3

    if-eqz v10, :cond_286

    invoke-static/range {v17 .. v17}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v24

    if-eqz v24, :cond_286

    invoke-virtual {v10}, Landroid/view/InputChannel;->dispose()V

    :cond_286
    throw v3

    :sswitch_287
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2c2

    const/4 v8, 0x1

    :goto_292
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/view/IInputContext;

    iget-object v7, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    :try_start_2aa
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V
    :try_end_2b8
    .catch Landroid/os/RemoteException; {:try_start_2aa .. :try_end_2b8} :catch_4bf

    :goto_2b8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/android/server/InputMethodManagerService;->setCurrentInputInfoForAGIF(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)V

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :cond_2c2
    const/4 v8, 0x0

    goto :goto_292

    :sswitch_2c4
    :try_start_2c4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v3, v0, v1}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_2dd
    .catch Landroid/os/RemoteException; {:try_start_2c4 .. :try_end_2dd} :catch_4bc

    :goto_2dd
    const/4 v3, 0x1

    return v3

    :sswitch_2df
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    iget-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/view/IInputMethodClient;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/view/InputBindResult;

    :try_start_2ef
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_2f4
    .catch Landroid/os/RemoteException; {:try_start_2ef .. :try_end_2f4} :catch_30c
    .catchall {:try_start_2ef .. :try_end_2f4} :catchall_341

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_307

    invoke-static {v11}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_307

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    :cond_307
    :goto_307
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x1

    return v3

    :catch_30c
    move-exception v14

    :try_start_30d
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Client died receiving input method "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32d
    .catchall {:try_start_30d .. :try_end_32d} :catchall_341

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_307

    invoke-static {v11}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_307

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    goto :goto_307

    :catchall_341
    move-exception v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v24, v0

    if-eqz v24, :cond_359

    invoke-static {v11}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v24

    if-eqz v24, :cond_359

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/InputChannel;->dispose()V

    :cond_359
    throw v3

    :sswitch_35a
    :try_start_35a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_37d

    const/4 v3, 0x1

    move/from16 v24, v3

    :goto_36d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_381

    const/4 v3, 0x1

    :goto_374
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_37b
    .catch Landroid/os/RemoteException; {:try_start_35a .. :try_end_37b} :catch_383

    :goto_37b
    const/4 v3, 0x1

    return v3

    :cond_37d
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_36d

    :cond_381
    const/4 v3, 0x0

    goto :goto_374

    :catch_383
    move-exception v14

    const-string/jumbo v24, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Got RemoteException sending setActive(false) notification to pid "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v25, " uid "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    :sswitch_3c4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3d2

    const/4 v3, 0x1

    :goto_3cb
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    const/4 v3, 0x1

    return v3

    :cond_3d2
    const/4 v3, 0x0

    goto :goto_3cb

    :sswitch_3d4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3e2

    const/4 v3, 0x1

    :goto_3db
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    const/4 v3, 0x1

    return v3

    :cond_3e2
    const/4 v3, 0x0

    goto :goto_3db

    :sswitch_3e4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/InputMethodManagerService$ClientState;

    :try_start_3f0
    iget-object v3, v12, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_3f7
    .catch Landroid/os/RemoteException; {:try_start_3f0 .. :try_end_3f7} :catch_3f9

    :goto_3f7
    const/4 v3, 0x1

    return v3

    :catch_3f9
    move-exception v14

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ") notification to pid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v12, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " uid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v12, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f7

    :sswitch_439
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_450

    const/16 v16, 0x1

    :goto_441
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/InputMethodManagerService$ClientState;

    :try_start_447
    iget-object v3, v12, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_44e
    .catch Landroid/os/RemoteException; {:try_start_447 .. :try_end_44e} :catch_453

    :goto_44e
    const/4 v3, 0x1

    return v3

    :cond_450
    const/16 v16, 0x0

    goto :goto_441

    :catch_453
    move-exception v14

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Got RemoteException sending reportFullscreen("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ") notification to pid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v12, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " uid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v12, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44e

    :sswitch_493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_4ab

    const/4 v3, 0x1

    :goto_4a4
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    const/4 v3, 0x1

    return v3

    :cond_4ab
    const/4 v3, 0x0

    goto :goto_4a4

    :sswitch_4ad
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    const/4 v3, 0x1

    return v3

    :catch_4bc
    move-exception v14

    goto/16 :goto_2dd

    :catch_4bf
    move-exception v14

    goto/16 :goto_2b8

    :catch_4c2
    move-exception v14

    goto/16 :goto_23f

    :catch_4c5
    move-exception v14

    goto/16 :goto_1e5

    :catch_4c8
    move-exception v14

    goto/16 :goto_1ca

    :catch_4cb
    move-exception v14

    goto/16 :goto_1b4

    :catch_4ce
    move-exception v14

    goto/16 :goto_a2

    :catch_4d1
    move-exception v14

    goto/16 :goto_8b

    :sswitch_data_4d4
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_70
        0x3 -> :sswitch_7d
        0x3e8 -> :sswitch_82
        0x3f2 -> :sswitch_8d
        0x3fc -> :sswitch_a7
        0x3fd -> :sswitch_19f
        0x3fe -> :sswitch_1b9
        0x3ff -> :sswitch_49
        0x400 -> :sswitch_202
        0x401 -> :sswitch_21a
        0x406 -> :sswitch_1cc
        0x40b -> :sswitch_1ea
        0x410 -> :sswitch_22a
        0x41a -> :sswitch_244
        0x7d0 -> :sswitch_287
        0xbb8 -> :sswitch_2c4
        0xbc2 -> :sswitch_2df
        0xbcc -> :sswitch_35a
        0xbd6 -> :sswitch_3c4
        0xbe0 -> :sswitch_3e4
        0xbe5 -> :sswitch_439
        0xbea -> :sswitch_3d4
        0xfa0 -> :sswitch_493
        0x1388 -> :sswitch_4ad
    .end sparse-switch

    :pswitch_data_53a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v3, :cond_18

    :cond_e
    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_18
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v3, :cond_2a

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2a

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2a
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_8c

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v3, :cond_88

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8a

    const/4 v2, 0x1

    :goto_39
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v3, v8}, Landroid/view/WindowManagerInternal;->onShowVirtualKeyboardVS(Landroid/os/IBinder;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8e

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "VS requested not hiding the soft keyboard (which should not be shown)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_4d
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_5e

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v3, :cond_5e

    :try_start_55
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_5c} :catch_b5

    :goto_5c
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    :cond_5e
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mImeInTransition:Z

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "clearLIMWFT"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mImeInTransition:Z

    :cond_74
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    if-eqz v1, :cond_87

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/am/MultiWindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    :cond_87
    return v1

    :cond_88
    const/4 v2, 0x1

    goto :goto_39

    :cond_8a
    const/4 v2, 0x0

    goto :goto_39

    :cond_8c
    const/4 v2, 0x0

    goto :goto_39

    :cond_8e
    if-eqz v2, :cond_aa

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "hideCurrentInputLocked : send MSG_HIDE_SOFT_INPUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v6, 0x406

    invoke-virtual {v4, v6, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v1, 0x1

    goto :goto_4d

    :cond_aa
    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "hideCurrentInputLocked : shouldHideSoftInput is false"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_4d

    :catch_b5
    move-exception v0

    const-string/jumbo v3, "InputMethodManagerService"

    const-string/jumbo v4, "hideCurrentInputLocked : unbindService is failed due to IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method hideInputMethodMenu()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Hide switching menu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    :cond_15
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-void
.end method

.method hideKeyboardDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    :cond_c
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hideMySoftInput : Ignoring due to an invalid token, uid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_4d

    monitor-exit v4

    return-void

    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_40
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4d

    monitor-exit v4

    return-void

    :catchall_48
    move-exception v3

    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 13

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "InputMethodManagerService"

    const-string/jumbo v5, "hideSoftInput : Ignoring, called from invalid user"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_19
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_a8

    :try_start_1c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_a5

    if-eqz v4, :cond_22

    if-nez p1, :cond_54

    :cond_22
    :try_start_22
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hideSoftInput : Ignoring, uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4f} :catch_85
    .catchall {:try_start_22 .. :try_end_4f} :catchall_a5

    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_22

    :cond_62
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client requesting input be hidden, flags : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_7f
    .catchall {:try_start_54 .. :try_end_7f} :catchall_a5

    move-result v4

    :try_start_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_85
    move-exception v0

    :try_start_86
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hideSoftInput : exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_a5

    :try_start_a0
    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_a5
    move-exception v4

    :try_start_a6
    monitor-exit v5

    throw v4
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isAccessoryKeyboard()I
    .registers 2

    sget v0, Lcom/android/server/InputMethodManagerService;->keyboardState:I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "com.samsung.inputmethod"

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2b
    return v4

    :cond_2c
    return v3

    :cond_2d
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    return v4

    :cond_46
    return v3

    :cond_47
    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_59
    return v4

    :cond_5a
    return v3
.end method

.method public isInputMethodShown()Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVis()V

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x400

    invoke-virtual {v1, v3, p2, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .registers 13

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v6

    if-nez v6, :cond_8

    return v8

    :cond_8
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_b
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v6, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v5, :cond_67

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    if-ltz p3, :cond_1e

    array-length v6, v4
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_64

    if-lt p3, v6, :cond_20

    :cond_1e
    monitor-exit v7

    return v8

    :cond_20
    :try_start_20
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "before"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_64

    move-result-wide v2

    :try_start_52
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5f

    :try_start_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_64

    const/4 v6, 0x1

    monitor-exit v7

    return v6

    :catchall_5f
    move-exception v6

    :try_start_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_67
    monitor-exit v7

    return v8
.end method

.method public notifyUserAction(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-eq v1, p1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method onActionLocaleChanged()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    move-result v1

    if-eqz v1, :cond_19

    monitor-exit v2

    return-void

    :cond_19
    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_2a

    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13

    const/4 v9, -0x1

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_4
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v5, "onServiceConnected"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v1, :cond_36

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v5, "unbindCurrentMethodLocked - Service connected without a token!"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_ba

    monitor-exit v4

    return-void

    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v8, 0x410

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    :cond_55
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    if-eq v1, v9, :cond_b0

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isKnoxProcessRunning(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->isSamsungWorkspace(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b0

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v5, "onServiceConnected : Workspace keyboard is connected. but focused app is not in Workspace. Switch back to owner."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a6
    .catchall {:try_start_36 .. :try_end_a6} :catchall_ba

    move-result-wide v2

    :try_start_a7
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->legacyKnoxProcess:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v1}, Lcom/android/server/InputMethodManagerService;->handleKnoxKeyboard(II)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ad} :catch_b2
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_bd

    :try_start_ad
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_ba

    :cond_b0
    :goto_b0
    monitor-exit v4

    return-void

    :catch_b2
    move-exception v0

    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_bd

    :try_start_b6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_b0

    :catchall_ba
    move-exception v1

    monitor-exit v4

    throw v1

    :catchall_bd
    move-exception v1

    :try_start_be
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_ba
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_49

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_49

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/16 v1, 0x9

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v5, 0xbc2

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_4e

    :cond_47
    monitor-exit v2

    return-void

    :cond_49
    monitor-exit v2

    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method onSwitchUser(I)V
    .registers 5

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1d
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v2

    if-lez v2, :cond_4c

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    :goto_23
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUnlockUser : userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " curUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_a6

    if-eq p1, v0, :cond_53

    monitor-exit v3

    return-void

    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    goto :goto_23

    :cond_53
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_68

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    :cond_68
    const/4 v1, 0x0

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUnlockUser : mImeSelectedOnBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mInitialUserSwitch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-eqz v2, :cond_9a

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInitialUserSwitch:Z

    if-eqz v2, :cond_a4

    :cond_9a
    const/4 v1, 0x1

    :goto_9b
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_a2
    .catchall {:try_start_4c .. :try_end_a2} :catchall_a6

    monitor-exit v3

    return-void

    :cond_a4
    const/4 v1, 0x0

    goto :goto_9b

    :catchall_a6
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method registerSamsungAdditionalReceviers()V
    .registers 16

    const/4 v14, 0x0

    const/4 v13, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v12, "android.permission.MANAGE_USB"

    invoke-virtual {v10, v11, v8, v12, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.samsung.android.input.POGO_KEYBOARD_ADDED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "com.samsung.android.input.POGO_KEYBOARD_REMOVED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$POGOKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$RangeModeChangeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$CarModeReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$CarModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    sget-object v10, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v10, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$KnoxDesktopModeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v5, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$PSSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v12, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v10, v11, v5, v12, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$KMSKeyboardReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const-string/jumbo v12, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual {v10, v11, v2, v12, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v10, "VZW"

    const-string/jumbo v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v11, p0}, Lcom/android/server/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_fd
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "universal_switch_enabled"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "mobile_keyboard"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMobileKeyboardChangeObserver:Lcom/android/server/InputMethodManagerService$MobileKeyboardChangeObserver;

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_enabled"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_keyboard_block"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_a
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v1, 0x0

    :goto_15
    array-length v3, p1

    if-ge v1, v3, :cond_2c

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2e

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    monitor-exit v4

    return-void

    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_22

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    :cond_22
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v1, v0, :cond_29

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v2

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_36

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v1

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_32

    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz p2, :cond_34

    const/4 v0, 0x1

    :goto_27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v5, 0xbe5

    invoke-virtual {v3, v5, v0, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_36

    :cond_32
    monitor-exit v1

    return-void

    :cond_34
    const/4 v0, 0x0

    goto :goto_27

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 10

    const/4 v4, 0x1

    iget-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v1, :cond_44

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating new session for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v4, v0, v4

    new-instance v5, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    const/16 v6, 0x41a

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_44
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    return-void
.end method

.method public setAccessControlEnable(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlEnable:Z

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 13

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    if-nez p2, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_13
    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_64

    if-nez v7, :cond_19

    monitor-exit v8

    return-void

    :cond_19
    :try_start_19
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_64

    if-nez v4, :cond_25

    monitor-exit v8

    return-void

    :cond_25
    :try_start_25
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_53
    .catchall {:try_start_25 .. :try_end_2e} :catchall_64

    move-result-object v5

    if-eqz v5, :cond_6a

    :try_start_31
    array-length v6, v5

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v6, :cond_6a

    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_64

    move-result-wide v2

    const/4 v7, 0x0

    :try_start_4b
    invoke-virtual {p0, v7}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5f

    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_64

    monitor-exit v8

    return-void

    :catch_53
    move-exception v0

    :try_start_54
    const-string/jumbo v7, "InputMethodManagerService"

    const-string/jumbo v9, "Failed to get package infos"

    invoke-static {v7, v9}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_64

    monitor-exit v8

    return-void

    :catchall_5f
    move-exception v7

    :try_start_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_6a
    monitor-exit v8

    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    return v5

    :cond_8
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    if-eqz p1, :cond_2e

    :try_start_d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_30

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_2e
    monitor-exit v3

    return v5

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setDefaultIMEForKeyboard()V
    .registers 7

    sget-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v4, :cond_5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_3a

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3a
    return-void
.end method

.method setDefaultIMEforChineseKeyboard()V
    .registers 2

    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-void
.end method

.method setDefaultIMEforJapaneseKeyboard()V
    .registers 2

    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    sput-object v0, Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v1, p1, :cond_32

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1a

    :try_start_e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_35

    :cond_1a
    :goto_1a
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_32

    :try_start_26
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    goto :goto_32

    :catch_35
    move-exception v0

    goto :goto_1a
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_c
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iput p4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_33

    monitor-exit v4

    packed-switch p4, :pswitch_data_3c

    :pswitch_1f
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3a

    const/4 v0, 0x1

    :goto_24
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    :cond_2f
    invoke-virtual {v4, p1, v3, v0, v2}, Landroid/view/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZLandroid/os/IBinder;)V

    return-void

    :catchall_33
    move-exception v2

    monitor-exit v4

    throw v2

    :pswitch_36
    const/4 v0, 0x1

    goto :goto_24

    :pswitch_38
    const/4 v0, 0x0

    goto :goto_24

    :cond_3a
    const/4 v0, 0x0

    goto :goto_24

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_38
        :pswitch_36
    .end packed-switch
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p3, :cond_21

    :try_start_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_25

    :goto_1f
    monitor-exit v1

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1f

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_8

    return v3

    :cond_8
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    move-result-wide v0

    :try_start_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    move-result v2

    :try_start_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1f

    monitor-exit v3

    return v2

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_1f
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v2, :cond_28

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_28
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_51

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    return v8

    :cond_4b
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, p1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return v7

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    const-string/jumbo v6, "InputMethodManagerService"

    const-string/jumbo v7, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_81
    return v8

    :cond_82
    return v7
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 15

    const/4 v10, 0x1

    iget-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v9, :cond_15

    if-eqz p1, :cond_15

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_15

    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    :cond_15
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_39

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_39
    if-eqz p1, :cond_af

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    if-gtz v7, :cond_4a

    return-void

    :cond_4a
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-ltz p2, :cond_7e

    if-ge p2, v7, :cond_7e

    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    :goto_54
    if-eqz v5, :cond_58

    if-nez v6, :cond_83

    :cond_58
    const-string/jumbo v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal subtype state: old subtype = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", new subtype = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7e
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    goto :goto_54

    :cond_83
    if-eq v5, v6, :cond_a3

    invoke-direct {p0, v1, p2, v10}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_9a

    :try_start_8c
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v10, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v11, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v9, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_9a} :catch_a4

    :cond_9a
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-direct {p0, v9, v1, v5}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_a3
    return-void

    :catch_a4
    move-exception v0

    const-string/jumbo v9, "InputMethodManagerService"

    const-string/jumbo v10, "Failed to call changeInputMethodSubtype"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v9, 0x0

    :try_start_b4
    invoke-direct {p0, v1, p2, v9}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const-class v9, Landroid/app/ActivityManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v9

    if-eqz v9, :cond_104

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x20000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "input_method_id"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v9, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f3

    const-string/jumbo v9, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    :cond_f3
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_104

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v9, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_104
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_108
    .catchall {:try_start_b4 .. :try_end_108} :catchall_119

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    invoke-direct {p0, v9, v1, v10}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    :catchall_119
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public setInputMethodSwitchDisable(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setWACOMPen(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mbWACOMPen:Z

    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_9

    return v8

    :cond_9
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldOfferSwitchingToNextInputMethod : Ignoring  due to an invalid token, uid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_57

    monitor-exit v3

    return v8

    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_57

    move-result-object v0

    if-nez v0, :cond_55

    monitor-exit v3

    return v8

    :cond_55
    monitor-exit v3

    return v9

    :catchall_57
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->isKeyboardBlockedForInteractionControl()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_12
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "mAccessibilityRequestingNoSoftKeyboard, so not show keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_22
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_47

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    :cond_2a
    :goto_2a
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4e

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    :goto_30
    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v0, :cond_39

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    :cond_39
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_51

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "System is not Ready, so not show keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_47
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2a

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    goto :goto_2a

    :cond_4e
    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mShowHWR:Z

    goto :goto_30

    :cond_51
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->onShowVirtualKeyboardVS(Landroid/os/IBinder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_78

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "VS requested not showing the soft keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    const/4 v7, 0x1

    :cond_6a
    :goto_6a
    if-eqz v7, :cond_77

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    :cond_77
    return v7

    :cond_78
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_b8

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v1, 0x3fc

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz v0, :cond_9e

    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    iput-boolean v10, p0, Lcom/android/server/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    :cond_9e
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v2, 0xc000001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    :cond_b6
    const/4 v7, 0x1

    goto :goto_6a

    :cond_b8
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_6a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v1, v0, v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "showCurrentInputLocked : Force disconnect/connect to the IME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v1, 0x60800005

    invoke-direct {p0, v0, p0, v1}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_6a
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "showInputMethodPickerFromClient :  Ignoring, called from invalid user "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Input method restricted by Knox Customization"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_35

    if-nez p1, :cond_6c

    :cond_35
    :goto_35
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showInputMethodPickerFromClient : Ignoring : uid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_7b

    monitor-exit v2

    return-void

    :cond_6c
    :try_start_6c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_7b

    move-result-object v3

    if-eq v1, v3, :cond_5e

    goto :goto_35

    :catchall_7b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method showKeyboardNotiDailog(I)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10402c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$10;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$11;-><init>(Lcom/android/server/InputMethodManagerService;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10402c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_30
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_49
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyboardBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10402c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showMySoftInput : Ignoring  due to an invalid token. uid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token:- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_4d

    monitor-exit v4

    return-void

    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4d

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_40
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4d

    monitor-exit v4

    return-void

    :catchall_48
    move-exception v3

    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 13

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "InputMethodManagerService"

    const-string/jumbo v5, "showSoftInput : Ignoring, called from invalid user "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_19
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_a8

    :try_start_1c
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_a5

    if-eqz v4, :cond_22

    if-nez p1, :cond_54

    :cond_22
    :try_start_22
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSoftInput : Ignoring, uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4f} :catch_85
    .catchall {:try_start_22 .. :try_end_4f} :catchall_a5

    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_22

    :cond_62
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client requesting input be shown, flags : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_7f
    .catchall {:try_start_54 .. :try_end_7f} :catchall_a5

    move-result v4

    :try_start_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_85
    move-exception v0

    :try_start_86
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSoftInput : exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_a5

    :try_start_a0
    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_a5
    move-exception v4

    :try_start_a6
    monitor-exit v5

    throw v4
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "startInputInnerLocked"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v7, :cond_4c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    invoke-virtual {p0, v9}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.view.InputMethod"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.client_label"

    const v3, 0x1040426

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x60800005

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    :try_start_a3
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startInputInnerLocked : Adding window token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_c9} :catch_f5

    :goto_c9
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_d6
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_f5
    move-exception v6

    goto :goto_c9
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 15

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    if-nez v1, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-nez p5, :cond_60

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring startInput with null EditorInfo. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v0

    if-nez v0, :cond_c1

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v0, v1, :cond_bf

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, " Starting startInputUncheckedLocked "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_bd} :catch_c0

    move-result-object v0

    return-object v0

    :cond_bf
    return-object v4

    :catch_c0
    move-exception v7

    :cond_c1
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .registers 17

    if-eqz p3, :cond_10

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "startInputOrWindowGainedFocus : windowGainedFocus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p9}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_10
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "startInputOrWindowGainedFocus : startInput "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move/from16 v4, p9

    move-object v5, p7

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .registers 14

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInputUncheckedLocked : Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    :cond_3f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_63

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_63

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_94

    const/4 v0, 0x1

    :goto_5a
    const/16 v3, 0xbcc

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_63
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_70

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    :cond_70
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    iput-object p4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_98

    and-int/lit16 v0, p5, 0x100

    if-eqz v0, :cond_96

    const/4 v0, 0x1

    :goto_8f
    invoke-virtual {p0, p6, v0}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_94
    const/4 v0, 0x0

    goto :goto_5a

    :cond_96
    const/4 v0, 0x0

    goto :goto_8f

    :cond_98
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_b1

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_b1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_cc

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_cc
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_ef
    :try_start_ef
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_f2
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_f2} :catch_f4

    move-result-object v0

    return-object v0

    :catch_f4
    move-exception v6

    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Unexpected exception."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x0

    return v17

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_109

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    :goto_30
    const/16 v16, 0x0

    const/4 v15, -0x1

    if-eqz v11, :cond_6a

    if-eqz v12, :cond_6a

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_10c

    const/4 v5, -0x1

    :goto_5c
    if-eqz v9, :cond_60

    if-eq v13, v5, :cond_6a

    :cond_60
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    :cond_6a
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_f6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_118

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_aa
    const/4 v7, 0x0

    :goto_ab
    if-ge v7, v4, :cond_f6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_123

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    if-eqz v10, :cond_123

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_123

    :cond_f6
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_126

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_105
    .catchall {:try_start_10 .. :try_end_105} :catchall_12a

    const/16 v17, 0x1

    monitor-exit v18

    return v17

    :cond_109
    const/4 v12, 0x0

    goto/16 :goto_30

    :cond_10c
    :try_start_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto/16 :goto_5c

    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;
    :try_end_121
    .catchall {:try_start_10c .. :try_end_121} :catchall_12a

    move-result-object v14

    goto :goto_aa

    :cond_123
    add-int/lit8 v7, v7, 0x1

    goto :goto_ab

    :cond_126
    const/16 v17, 0x0

    monitor-exit v18

    return v17

    :catchall_12a
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_9

    return v7

    :cond_9
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchToNextInputMethod : Ignoring  due to an invalid token, uid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_61

    monitor-exit v3

    return v7

    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v6, 0x1

    invoke-virtual {v4, p2, v2, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_61

    move-result-object v0

    if-nez v0, :cond_54

    monitor-exit v3

    return v7

    :cond_54
    :try_start_54
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_61

    monitor-exit v3

    return v8

    :catchall_61
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 12

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v4, :cond_105

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_107

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v4

    if-lez v4, :cond_107

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v1

    :goto_36
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_69
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v6, 0x11200e6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v4, v6}, Landroid/view/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    :cond_88
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4, v6, v8, v7, v9}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v4, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_3 .. :try_end_e3} :catchall_11a

    :try_start_e3
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_e6
    .catch Ljava/lang/RuntimeException; {:try_start_e3 .. :try_end_e6} :catch_10f
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_11a

    :goto_e6
    :try_start_e6
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-static {v4, v6}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/InputMethodManagerService$UserReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$UserReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_105
    .catchall {:try_start_e6 .. :try_end_105} :catchall_11a

    :cond_105
    monitor-exit v5

    return-void

    :cond_107
    :try_start_107
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    goto/16 :goto_36

    :catch_10f
    move-exception v2

    const-string/jumbo v4, "InputMethodManagerService"

    const-string/jumbo v6, "Unexpected exception"

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_107 .. :try_end_119} :catchall_11a

    goto :goto_e6

    :catchall_11a
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method unbindCurrentClientLocked(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_1f

    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v3, 0xbcc

    invoke-virtual {v1, v3, v5, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v4, 0xbb8

    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    :cond_4e
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    :cond_1a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v1, :cond_38

    :try_start_1e
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2e

    if-eqz p1, :cond_2e

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mImeInTransition:Z

    :cond_2e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_3e

    :goto_36
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    :cond_38
    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    return-void

    :catch_3e
    move-exception v0

    goto :goto_36
.end method

.method public undoMinimizeSoftInput()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x401

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 16

    const/4 v13, 0x4

    if-eqz p1, :cond_49

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_49

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_16
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const v3, 0x8000

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_46

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v0, v13, :cond_46

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_a1

    :cond_46
    :goto_46
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_49
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v11

    :cond_61
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    :try_start_67
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v11, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_70} :catch_7d

    :goto_70
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_75
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    return-void

    :catch_7d
    move-exception v8

    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_70

    :cond_9d
    invoke-virtual {p0, v13}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_75

    :catch_a1
    move-exception v7

    goto :goto_46
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x10202e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[HARDWARE_KEYBOARD] mShowImeWithHardKeyboard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_44
    return-void
.end method

.method updateSecureKeypadList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showInputMethodMenuInternal : secureKeypadEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSecureKeypadEnabled:Z

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->knoxV2Enabled:Z

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsPersona:Z

    if-eqz v2, :cond_46

    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v2, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->isSecureIMEKnox(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    :cond_46
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 16

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5f

    move-result v0

    if-nez v0, :cond_c

    monitor-exit v11

    return-void

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5f

    move-result-wide v8

    if-nez p3, :cond_23

    :try_start_12
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_5a

    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5f

    monitor-exit v11

    return-void

    :cond_23
    if-eqz p2, :cond_1e

    const/4 v6, 0x0

    :try_start_26
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3c} :catch_62
    .catchall {:try_start_26 .. :try_end_3c} :catchall_5a

    move-result-object v6

    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    if-eqz v6, :cond_4b

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4b
    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_5a

    goto :goto_1e

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    monitor-exit v11

    throw v0

    :catch_62
    move-exception v7

    goto :goto_3d
.end method
