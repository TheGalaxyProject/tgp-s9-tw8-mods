.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$1;,
        Lcom/android/settings/CryptKeeper$2;,
        Lcom/android/settings/CryptKeeper$3;,
        Lcom/android/settings/CryptKeeper$4;,
        Lcom/android/settings/CryptKeeper$5;,
        Lcom/android/settings/CryptKeeper$6;,
        Lcom/android/settings/CryptKeeper$7;,
        Lcom/android/settings/CryptKeeper$8;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$DirectionStichingTimer;,
        Lcom/android/settings/CryptKeeper$MountTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;,
        Lcom/android/settings/CryptKeeper$ValidationTask;
    }
.end annotation


# static fields
.field private static final CSC_IMS_MDM_TYPE:Ljava/lang/String;

.field public static mExtSdcardRoot:Ljava/lang/String;

.field private static mSdCardMounted:Z

.field private static sCountryCode:Ljava/lang/String;

.field private static sEmergencyCallStatus:Z

.field private static sMaxFailedAttempts:I

.field private static sPasswordMaxLength:I

.field private static sSalesCode:Ljava/lang/String;

.field private static sSavedPassword:Ljava/lang/String;

.field private static sfailedAttemptCounts:Ljava/lang/Integer;


# instance fields
.field private DOT_MARGIN_LEFT:D

.field private DOT_MARGIN_RIGHT:D

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mClickCount:I

.field private mContext:Landroid/content/Context;

.field private mCooldown:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultString:I

.field mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDot:Landroid/widget/ImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:I

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCheckSleeping:Z

.field mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

.field private mKeypressSoundCountup:I

.field private mLaunchEmergencyDialer:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressBarLayout:Landroid/widget/ProgressBar;

.field private mReleaseWakeLockCountdown:I

.field private mResetButton:Landroid/widget/Button;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

.field mTelephony:Landroid/telephony/TelephonyManager;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWarningText:Landroid/widget/TextView;

.field private passwordType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/CryptKeeper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get14()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/CryptKeeper;->mSdCardMounted:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/settings/CryptKeeper;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/settings/CryptKeeper;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    return v0
.end method

.method static synthetic -get17()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18()I
    .registers 1

    sget v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    return v0
.end method

.method static synthetic -get19()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/CryptKeeper;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mClickCount:I

    return v0
.end method

.method static synthetic -get20()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/CryptKeeper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/CryptKeeper;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mDefaultString:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/CryptKeeper;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/CryptKeeper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/CryptKeeper;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/CryptKeeper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/CryptKeeper;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mClickCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/CryptKeeper;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/CryptKeeper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mIsCheckSleeping:Z

    return p1
.end method

.method static synthetic -set4(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/CryptKeeper;->mSdCardMounted:Z

    return p0
.end method

.method static synthetic -set5(Lcom/android/settings/CryptKeeper;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/CryptKeeper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/settings/CryptKeeper;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    return p1
.end method

.method static synthetic -set8(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set9(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 1

    sput-object p0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CryptKeeper;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->checkToDumpstate(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/CryptKeeper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->mountSDCard(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->resetStichingTimer()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/CryptKeeper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/CryptKeeper;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->checkToExtSdcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->wipeStorage()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/CryptKeeper;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showCopyDumpDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->clearDots()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/CryptKeeper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sput v2, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/CryptKeeper;->sEmergencyCallStatus:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeper;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    sput v2, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    const-string/jumbo v0, "/mnt/media_rw/"

    sput-object v0, Lcom/android/settings/CryptKeeper;->mExtSdcardRoot:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/CryptKeeper;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    const v0, 0x7f1206bd

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mDefaultString:I

    const v0, 0x7f120981

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mLaunchEmergencyDialer:Z

    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method private beginAttempt()V
    .registers 4

    const v1, 0x7f0a080f

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1205ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_19
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method private checkToDumpstate(Ljava/io/File;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "checkToDumpstate - Directory path not exists!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    array-length v2, v0

    if-gtz v2, :cond_24

    :cond_1a
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "checkToDumpstate -fileList is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_24
    const/4 v1, 0x0

    :goto_25
    array-length v2, v0

    if-ge v1, v2, :cond_44

    aget-object v2, v0, v1

    if-eqz v2, :cond_41

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_41

    aget-object v2, v0, v1

    const-string/jumbo v3, "last_ode_dumpstate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    return v2

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_44
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "checkToDumpstate - ODE Dumpstate not exists!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private checkToExtSdcard(Z)Z
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getSdCardVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_11

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "checkToExtSdcard - External SD Card UnMounted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_11
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/cache/recovery"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ode_dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4e

    :cond_44
    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "checkToExtSdcard - Directory path was wrong!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4e
    if-eqz p1, :cond_56

    invoke-direct {p0, v0, v1}, Lcom/android/settings/CryptKeeper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v5}, Lcom/android/settings/CryptKeeper;->mountSDCard(Z)V

    :cond_56
    const/4 v3, 0x1

    return v3
.end method

.method private clearDots()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2a
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    return-void
.end method

.method private cooldown()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    :cond_a
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_13
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :cond_1c
    const v1, 0x7f0a080f

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    const v1, 0x7f12069c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_36
    return-void

    :cond_37
    const v1, 0x7f12069b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_36
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 18

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "copyDirectory : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_6e

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    array-length v11, v3

    if-gtz v11, :cond_39

    :cond_38
    return-void

    :cond_39
    const/4 v9, 0x0

    :goto_3a
    array-length v11, v3

    if-ge v9, v11, :cond_c0

    aget-object v11, v3, v9

    if-eqz v11, :cond_6b

    aget-object v11, v3, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6b

    aget-object v11, v3, v9

    const-string/jumbo v12, "last_ode_dumpstate_changepw_failed"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6b

    new-instance v11, Ljava/io/File;

    aget-object v12, v3, v9

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    aget-object v13, v3, v9

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v11, v12}, Lcom/android/settings/CryptKeeper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_6e
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_70
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_77} :catch_20f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_77} :catch_10f
    .catchall {:try_start_70 .. :try_end_77} :catchall_1bc

    :try_start_77
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_7e} :catch_212
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7e} :catch_216
    .catchall {:try_start_77 .. :try_end_7e} :catchall_208

    const/16 v11, 0x400

    :try_start_80
    new-array v1, v11, [B

    :goto_82
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_c1

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_8c} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8c} :catch_21a
    .catchall {:try_start_80 .. :try_end_8c} :catchall_20b

    goto :goto_82

    :catch_8d
    move-exception v6

    move-object v7, v8

    move-object v4, v5

    :goto_90
    :try_start_90
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v12, "// Exception from"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_90 .. :try_end_b6} :catchall_1bc

    if-eqz v4, :cond_bb

    :try_start_b8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_17a

    :cond_bb
    :goto_bb
    if-eqz v7, :cond_c0

    :try_start_bd
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_19b

    :cond_c0
    :goto_c0
    return-void

    :cond_c1
    :try_start_c1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_c1 .. :try_end_c4} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_21a
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_20b

    if-eqz v5, :cond_c9

    :try_start_c6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_ef

    :cond_c9
    :goto_c9
    if-eqz v8, :cond_c0

    :try_start_cb
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_c0

    :catch_cf
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :catch_ef
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    :catch_10f
    move-exception v2

    :goto_110
    :try_start_110
    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_110 .. :try_end_12e} :catchall_1bc

    if-eqz v4, :cond_133

    :try_start_130
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_15a

    :cond_133
    :goto_133
    if-eqz v7, :cond_c0

    :try_start_135
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_c0

    :catch_139
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    :catch_15a
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    :catch_17a
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    :catch_19b
    move-exception v2

    const-string/jumbo v11, "CryptKeeper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    :catchall_1bc
    move-exception v11

    :goto_1bd
    if-eqz v4, :cond_1c2

    :try_start_1bf
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c2} :catch_1c8

    :cond_1c2
    :goto_1c2
    if-eqz v7, :cond_1c7

    :try_start_1c4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c7} :catch_1e8

    :cond_1c7
    :goto_1c7
    throw v11

    :catch_1c8
    move-exception v2

    const-string/jumbo v12, "CryptKeeper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    :catch_1e8
    move-exception v2

    const-string/jumbo v12, "CryptKeeper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    :catchall_208
    move-exception v11

    move-object v4, v5

    goto :goto_1bd

    :catchall_20b
    move-exception v11

    move-object v7, v8

    move-object v4, v5

    goto :goto_1bd

    :catch_20f
    move-exception v6

    goto/16 :goto_90

    :catch_212
    move-exception v6

    move-object v4, v5

    goto/16 :goto_90

    :catch_216
    move-exception v2

    move-object v4, v5

    goto/16 :goto_110

    :catch_21a
    move-exception v2

    move-object v7, v8

    move-object v4, v5

    goto/16 :goto_110
.end method

.method private delayAudioNotification()V
    .registers 5

    const/4 v1, 0x2

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private dipToPixel(I)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private encryptionProgressInit()V
    .registers 6

    const/16 v4, 0xb4

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_31

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "CryptKeeper"

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_31
    const v2, 0x7f0a0683

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_69

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_69
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAppliedSolution(Landroid/content/Context;)I
    .registers 5

    const/4 v1, -0x1

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    return v1
.end method

.method private getSdCardVolume()Landroid/os/storage/VolumeInfo;
    .registers 8

    const-string/jumbo v4, "storage"

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v4, "CryptKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSdCardVolume type :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "privatemode"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    return-object v1

    :cond_74
    const/4 v4, 0x0

    return-object v4
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 2

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleAndPerformDotAnimations()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_39

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_39
    iget-wide v2, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_59
    return-void
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .registers 14

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v7, :cond_3d

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->clearDots()V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v7}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/DirectionLockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/internal/widget/DirectionLockView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v7, :cond_47

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_5c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_5c

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    const v7, 0x7f0a080f

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0a095d

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    sget v7, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v2, v7, v8

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/settings/CryptKeeper;->getAppliedSolution(Landroid/content/Context;)I

    move-result v0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_f5

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v6, ""

    const/4 v7, 0x1

    if-ne v0, v7, :cond_dc

    const v7, 0x7f12069e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x7f1206a1

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_a3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ac
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_bd

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_bd
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v7, :cond_c8

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    :cond_c8
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v7, :cond_5b

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v7}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_5b

    :cond_dc
    const v7, 0x7f12069e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x7f12069d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a3

    :cond_f5
    const/16 v7, 0xa

    if-ge v2, v7, :cond_14c

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v6, ""

    const/4 v7, 0x1

    if-ne v0, v7, :cond_12c

    const v7, 0x7f1206bb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f1206a1

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_122
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ac

    :cond_12c
    const v7, 0x7f1206bb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f12069d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_122

    :cond_14c
    :try_start_14c
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v7

    iput v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_156} :catch_163

    :goto_156
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_17f

    const v7, 0x7f1206c3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_ac

    :catch_163
    move-exception v1

    const-string/jumbo v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error calling mount service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    :cond_17f
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18c

    const v7, 0x7f1206c2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_ac

    :cond_18c
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_199

    const v7, 0x7f1206c0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_ac

    :cond_199
    const v7, 0x7f1206c1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_ac
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v9, 0x1

    if-le v2, v9, :cond_1a

    const/4 v9, 0x1

    return v9

    :cond_1a
    const/4 v9, 0x1

    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    if-eqz v9, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_42
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int v5, v9, v0

    if-gtz v5, :cond_4f

    if-eqz p2, :cond_9

    const/4 v9, 0x1

    if-le v0, v9, :cond_9

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_52
    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "filteredImisCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SubtypeList       : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-le v2, v9, :cond_95

    const/4 v9, 0x1

    :goto_94
    return v9

    :cond_95
    const/4 v9, 0x0

    goto :goto_94
.end method

.method private isDebugView()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->mLaunchEmergencyDialer:Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1d
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    :try_start_25
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_32

    :goto_28
    return-void

    :cond_29
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :catch_32
    move-exception v0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Activity Not Found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_28
.end method

.method private mountSDCard(Z)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getSdCardVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/settings/CryptKeeper$MountTask;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/settings/CryptKeeper$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Z)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "mountSDCard() there is no SD card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/settings/CryptKeeper;->mClickCount:I

    goto :goto_13
.end method

.method private notifyUser()V
    .registers 6

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_19

    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "mAudioManager is null, so need to gett"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    :cond_19
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_46

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_45

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_90

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_23

    :try_start_4a
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_23

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_73} :catch_74

    goto :goto_23

    :catch_74
    move-exception v0

    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_90
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_45
.end method

.method private passwordEntryInit()V
    .registers 15

    const v9, 0x7f0a0614

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const v9, 0x7f0a0003

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v9, :cond_88

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    sget v9, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    if-nez v9, :cond_32

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v10, 0x60000

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v9

    sput v9, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    :cond_32
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    sget v12, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v8, Lcom/android/settings/CryptKeeper$13;

    invoke-direct {v8, p0}, Lcom/android/settings/CryptKeeper$13;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_74

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_74

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_74

    const/16 v9, 0xb4

    invoke-direct {p0, v9}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v9, 0xb4

    invoke-direct {p0, v9}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9, v8}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_88
    const v9, 0x7f0a04cd

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView;

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v9, :cond_ab

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_ab
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_274

    const v9, 0x7f0a0259

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/DirectionLockView;

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    :goto_c3
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v9, :cond_180

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v9}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    const v9, 0x7f0a029d

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070287

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-double v10, v9

    iput-wide v10, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070288

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-double v10, v9

    iput-wide v10, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080123

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_27a

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xa0

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/settings/CryptKeeper$14;

    invoke-direct {v10, p0}, Lcom/android/settings/CryptKeeper$14;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/settings/CryptKeeper$15;

    invoke-direct {v10, p0}, Lcom/android/settings/CryptKeeper$15;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070289

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-double v10, v9

    iget-wide v12, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    add-double/2addr v10, v12

    iget-wide v12, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    div-double v0, v10, v12

    const/4 v9, 0x2

    new-array v9, v9, [F

    double-to-float v10, v0

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xa0

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/settings/CryptKeeper$16;

    invoke-direct {v10, p0}, Lcom/android/settings/CryptKeeper$16;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_180
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v9

    if-nez v9, :cond_1a1

    const v9, 0x7f0a02be

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a1

    const-string/jumbo v9, "CryptKeeper"

    const-string/jumbo v10, "Removing the emergency Call button"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1a1
    const v9, 0x7f0a0875

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1c6

    const/4 v9, 0x0

    invoke-direct {p0, v4, v9}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v9

    if-eqz v9, :cond_1c6

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcom/android/settings/CryptKeeper$17;

    invoke-direct {v9, p0, v4}, Lcom/android/settings/CryptKeeper$17;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c6
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v9, :cond_1f2

    const-string/jumbo v9, "CryptKeeper"

    const-string/jumbo v10, "Acquiring wakelock."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "power"

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    if-eqz v6, :cond_1f2

    const-string/jumbo v9, "CryptKeeper"

    const/16 v10, 0x1a

    invoke-virtual {v6, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v9, 0x60

    iput v9, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    :cond_1f2
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v9, :cond_211

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-nez v9, :cond_211

    iget-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_211

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v9, :cond_211

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v9}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :cond_211
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    sget-object v9, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_243

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v9, :cond_240

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    sget-object v10, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v10}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setSelection(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    :cond_240
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    :cond_243
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setMaxPasswordAttempts()V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x1d4c0

    const/4 v12, 0x2

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, -0x7ff80000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060048

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    :cond_274
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    goto/16 :goto_c3

    nop

    :array_27a
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetStichingTimer()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIsCheckSleeping:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    if-eqz v0, :cond_19

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Reset StichingTimer!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->interrupt()V

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    :cond_19
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .registers 7

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v5, :cond_37

    const/4 v1, 0x1

    :goto_c
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v0, 0x1

    :goto_17
    if-nez v1, :cond_36

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_36

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_36
    return-void

    :cond_37
    const/4 v1, 0x0

    goto :goto_c

    :cond_39
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private final setBackFunctionality(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_11

    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mLaunchEmergencyDialer:Z

    if-eqz v0, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_11
.end method

.method private setMaxPasswordAttempts()V
    .registers 10

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v6, "security.ode.maxattempts"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1e

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1e
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    if-eqz v4, :cond_29

    :try_start_25
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getCCmodeForCryptKeeper()I

    move-result v3

    :cond_29
    if-nez v3, :cond_3a

    if-lez v0, :cond_3a

    sput v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v1

    const-string/jumbo v5, "CryptKeeper"

    const-string/jumbo v6, "Can\'t get getCCmodeForCryptKeeper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v5

    if-eqz v5, :cond_47

    sput v8, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    if-lez v0, :cond_46

    sput v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    :cond_46
    :goto_46
    return-void

    :cond_47
    const-string/jumbo v5, "TNG"

    sget-object v6, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    sput v8, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    goto :goto_46

    :cond_55
    const/16 v5, 0x1e

    sput v5, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    goto :goto_46
.end method

.method private setupUi()V
    .registers 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mLaunchEmergencyDialer:Z

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    :cond_d
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/EFSProperties;->loadKeyguardConfig()Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    :cond_17
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    if-nez v0, :cond_24

    const-string/jumbo v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_24
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    return-void

    :cond_2e
    const-string/jumbo v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "progress"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    :cond_47
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const-string/jumbo v0, "vold.encrypt_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "decrypt"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    const v0, 0x7f0a08bb

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f1206ad

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0775

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_86
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    :cond_89
    :goto_89
    return-void

    :cond_8a
    const v0, 0x7f0a0774

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_86

    :cond_97
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v0, :cond_a4

    const-string/jumbo v0, "password"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    :cond_a4
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "ro.boot.ucs_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11b

    const-string/jumbo v0, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11b

    const-string/jumbo v0, "persist.security.ucs.csname"

    const-string/jumbo v1, "boot_test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string/jumbo v0, "unencrypted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string/jumbo v0, "security.knox_ucs_mode"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v5, v2, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_89

    :cond_106
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_89

    :cond_11b
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    if-eqz v0, :cond_13a

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_89

    :cond_13a
    new-instance v0, Lcom/android/settings/CryptKeeper$9;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$9;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_89

    :cond_147
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v0, :cond_89

    new-instance v1, Lcom/android/settings/CryptKeeper$ValidationTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$ValidationTask;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto/16 :goto_89
.end method

.method private showCopyDumpDialog()Z
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->checkToExtSdcard(Z)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->mountSDCard(Z)V

    return v4

    :cond_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Dumpstate for ODE"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "COPY TO SDCARD"

    new-instance v3, Lcom/android/settings/CryptKeeper$12;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeper$12;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2
.end method

.method private showFactoryReset()V
    .registers 9

    const v7, 0x7f120695

    const/4 v6, 0x0

    const v5, 0x7f0a08bb

    const v4, 0x7f0a080f

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/CryptKeeper$10;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$10;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0307

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    if-nez v2, :cond_37

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_37
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3d
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/CryptKeeper$11;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeper$11;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_70

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120698

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120696

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_69
    return-void

    :cond_6a
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3d

    :cond_70
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c8

    const-string/jumbo v2, "security.fbe.fail_cause"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120697

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    :cond_be
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_69

    :cond_c8
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e6

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1206b6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1206b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_69

    :cond_e6
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120683

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120682

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_69
.end method

.method private takeEmergencyCallAction()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_e
.end method

.method private updateEmergencyCallButtonState()V
    .registers 6

    const/16 v4, 0x8

    const v2, 0x7f0a02be

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "Softphone"

    sget-object v3, Lcom/android/settings/CryptKeeper;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/android/settings/CryptKeeper$18;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$18;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_52

    const v1, 0x7f1206bf

    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_49
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_52
    const v1, 0x7f1206be

    goto :goto_45
.end method

.method private updateProgress()V
    .registers 15

    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string/jumbo v9, "vold.encrypt_progress"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "error_partially_encrypted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const v9, 0x7f0d0098

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    return-void

    :cond_1c
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_24
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_b7

    move-result v9

    if-eqz v9, :cond_b1

    const/16 v2, 0x32

    :goto_2c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    if-nez v9, :cond_102

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v9

    if-eqz v9, :cond_ed

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_d8

    const v9, 0x7f1206a7

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_53
    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Encryption progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6d
    const-string/jumbo v9, "vold.encrypt_time_remaining"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_96

    add-int/lit8 v9, v6, 0x9

    div-int/lit8 v9, v9, 0xa

    mul-int/lit8 v6, v9, 0xa

    int-to-long v10, v6

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    const v9, 0x7f1206ab

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_95} :catch_14d

    move-result-object v0

    :cond_96
    :goto_96
    const v9, 0x7f0a080f

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_a4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a4
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_b1
    :try_start_b1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b7

    move-result v2

    goto/16 :goto_2c

    :catch_b7
    move-exception v1

    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :cond_d8
    const v9, 0x7f1206a8

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    :cond_ed
    const v9, 0x7f1206a6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    :cond_102
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v9

    if-eqz v9, :cond_138

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_123

    const v9, 0x7f1206a9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    :cond_123
    const v9, 0x7f1206aa

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    :cond_138
    const v9, 0x7f1206a5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    :catch_14d
    move-exception v1

    goto/16 :goto_96
.end method

.method private wipeStorage()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v8, 0x2000

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    iput-object p0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v7, "persist.omc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    const-string/jumbo v7, ""

    sget-object v8, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string/jumbo v7, "null"

    sget-object v8, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    :cond_41
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    :cond_4a
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ro.crypto.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "security.fbe.fail_cause"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "ro.boot.ucs_mode"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    const-string/jumbo v7, "encrypted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    :cond_7b
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v7

    if-nez v7, :cond_a3

    const-string/jumbo v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string/jumbo v7, "trigger_restart_framework"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    :cond_93
    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    return-void

    :cond_a3
    const-string/jumbo v7, "security.ode.cryptkeeper.status"

    const-string/jumbo v8, "entered"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/settings/CryptKeeper;->mClickCount:I

    :try_start_af
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c0

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_c0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_af .. :try_end_c0} :catch_116

    :cond_c0
    :goto_c0
    const-string/jumbo v7, "statusbar"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v8, 0x3370000

    invoke-virtual {v7, v8}, Landroid/app/StatusBarManager;->disable(I)V

    if-eqz p1, :cond_dd

    const-string/jumbo v7, "cooldown"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    :cond_dd
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e9

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    :cond_e9
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v7, :cond_101

    move-object v4, v3

    check-cast v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v7, v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v7, "CryptKeeper"

    const-string/jumbo v8, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :catch_116
    move-exception v1

    goto :goto_c0
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2f
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    const/4 v1, 0x6

    if-ne p2, v1, :cond_41

    :cond_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v4

    :cond_17
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, ""

    sput-object v1, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3b

    new-instance v1, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DecryptTask;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3a
    return v4

    :cond_3b
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_3a

    :cond_41
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "mBootCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    const-string/jumbo v0, "Australia"

    sget-object v1, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    :cond_25
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "mBootCompleted"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    const/4 v0, 0x0

    return v0
.end method
