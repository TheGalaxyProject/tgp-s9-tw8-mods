.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$1;,
        Lcom/android/server/power/ShutdownThread$2;,
        Lcom/android/server/power/ShutdownThread$3;,
        Lcom/android/server/power/ShutdownThread$4;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$ExtractColor;,
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$Slog;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

.field private static final ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

.field private static final ACTION_POWER_OFF_CANCEL:Ljava/lang/String; = "POWER_OFF_CANCEL"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BLACK_THEME_TEXT_MESSAGE_SCALE:F = 1.12f

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final BUTTON_DESCRIPTION_INDEX:I = 0x2

.field private static final BUTTON_IMAGE_INDEX:I = 0x0

.field private static final BUTTON_TITLE_INDEX:I = 0x1

.field private static final BUTTON_VIEW_SIZE:F = 1.3f

.field private static final DESCRIP_TEXT_PADDING:I = 0x18

.field private static final DESCRIP_TEXT_SIZE:I = 0xd

.field private static final FINISHED:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final NFC_PERSISTENT_LOG_TYPE:I = 0x2

.field private static N_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RECOVERY_CAUSE_FILE:Ljava/lang/String; = "/sys/class/sec/sec_debug/recovery_cause"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field private static final SEP_VERSION_8_1:I = 0x138e4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_BROADCAST_FEATURE:Ljava/lang/String; = "dev.shutdownbroadcast.on"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final STARTED:I = 0x1

.field private static final SUPPORT_DEX:Z = true

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TEXT_MESSAGE_SIZE:F = 15.0f

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final UNSTARTED:I = 0x0

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static buttonView:Landroid/widget/LinearLayout;

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dexModeEnabled:Z

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static fadeoutView:Landroid/widget/RelativeLayout;

.field private static mCallerName:Ljava/lang/String;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private static mIsSupportedBlur:Z

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private static mOemClassLoader:Ldalvik/system/PathClassLoader;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private static mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static m_rebootByBixby:Z

.field private static m_shutdownByBixby:Z

.field private static progressMessage:Ljava/lang/CharSequence;

.field private static progressStatus:I

.field private static rootView:Landroid/widget/RelativeLayout;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsItemLongpressed:Z

.field private static sIsNeedWhiteTheme:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sRebootSafeModeByBixby:Z

.field private static sSupportBlackWhiteTheme:Z

.field private static s_Context:Landroid/content/Context;

.field private static subsysProp:Ljava/lang/String;

.field private static final uncryptProgressSync:Ljava/lang/Object;

.field private static uncryptStep:I


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic -get10()Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic -get11()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get12()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsSupportedBlur:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get14()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic -get15()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic -get17()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get18()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get19()Landroid/speech/tts/TextToSpeech;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic -get20()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    return v0
.end method

.method static synthetic -get21()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return v0
.end method

.method static synthetic -get22()Ljava/lang/CharSequence;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get23()I
    .registers 1

    sget v0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    return v0
.end method

.method static synthetic -get24()Landroid/widget/RelativeLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get25()Landroid/app/Dialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get26()Lcom/android/server/power/ShutdownThread;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get27()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return v0
.end method

.method static synthetic -get28()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic -get29()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/LinearLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get30()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic -get31()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get32()I
    .registers 1

    sget v0, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    return v0
.end method

.method static synthetic -get4()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic -get5()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    return v0
.end method

.method static synthetic -get7()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic -get8()Landroid/widget/RelativeLayout;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic -set10(I)I
    .registers 1

    sput p0, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    return p0
.end method

.method static synthetic -set11(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set12(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set13(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return p0
.end method

.method static synthetic -set14(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    return p0
.end method

.method static synthetic -set15(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    return p0
.end method

.method static synthetic -set16(I)I
    .registers 1

    sput p0, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    return p0
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    return p0
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/server/power/ShutdownThread;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set5(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic -set6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set7(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return p0
.end method

.method static synthetic -set8(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return p0
.end method

.method static synthetic -set9(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/ShutdownThread;->getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap11()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;Z)Landroid/widget/ImageView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonView(Landroid/content/Context;Z)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getDescriptionView(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getTextView(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/cover/CoverState;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8()I
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getTitleText()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "user"

    const-string/jumbo v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-nez v1, :cond_cc

    move v1, v2

    :goto_1a
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    new-instance v1, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string/jumbo v1, "mocha"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    :cond_64
    move v1, v3

    :goto_65
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_d1

    move v1, v2

    :goto_6e
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    sput-object v5, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v4, 0x138e4

    if-lt v1, v4, :cond_d3

    move v1, v2

    :goto_8e
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsSupportedBlur:Z

    const-string/jumbo v1, "vendor.peripheral.shutdown_critical_list"

    const-string/jumbo v2, "ERROR"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    sput v3, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void

    :cond_cc
    move v1, v3

    goto/16 :goto_1a

    :cond_cf
    move v1, v2

    goto :goto_65

    :cond_d1
    move v1, v3

    goto :goto_6e

    :cond_d3
    move v1, v3

    goto :goto_8e
.end method

.method private constructor <init>()V
    .registers 2

    const-string/jumbo v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static animateDismiss()V
    .registers 4

    const-wide/16 v2, 0x12c

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_25
    return-void

    :cond_26
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_18

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_10e

    monitor-exit v5

    return-void

    :cond_18
    const/4 v4, 0x1

    :try_start_19
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_10e

    monitor-exit v5

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@beginShutdownSequence"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v4, v7, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    :cond_55
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_111

    const/4 v3, 0x1

    :goto_63
    const-string/jumbo v4, "powerofftriggered"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string/jumbo v4, "isShutDownForRCS"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7c
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7f
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_94
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "ShutdownThread-cpu"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_b3
    .catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_b3} :catch_114

    :goto_b3
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v4, "shutdown"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_f3

    :try_start_d3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "ShutdownThread-screen"

    const/16 v7, 0x1a

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_f3
    .catch Ljava/lang/SecurityException; {:try_start_d3 .. :try_end_f3} :catch_123

    :cond_f3
    :goto_f3
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@normal"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "recovery-update"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startRecoveryDialog(Landroid/content/Context;)V

    :goto_10a
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    return-void

    :catchall_10e
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_111
    const/4 v3, 0x0

    goto/16 :goto_63

    :catch_114
    move-exception v1

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_b3

    :catch_123
    move-exception v1

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_f3

    :cond_132
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    goto :goto_10a
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .registers 6

    const/4 v4, 0x1

    const-wide/16 v2, 0x12c

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_a

    :goto_6
    invoke-static {p0, v4, v4}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_6
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16

    const/4 v14, 0x0

    if-nez p0, :cond_d

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_d
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    packed-switch v7, :pswitch_data_9e

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
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_80

    move-result-object v11

    :goto_4a
    if-nez v11, :cond_9c

    const-string/jumbo v0, "ShutdownThread"

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

    return-object v14

    :pswitch_7d
    move v1, v12

    move v2, v13

    goto :goto_37

    :catch_80
    move-exception v9

    const-string/jumbo v0, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : failed to access screenshot API : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :cond_9c
    return-object v11

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_37
        :pswitch_7d
    .end packed-switch
.end method

.method private static checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method private static createBeforeMConfirmDialog(Landroid/content/Context;Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
    .registers 16

    const v13, 0x1040009

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v4, 0x2

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_23

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v10}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    :cond_23
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v10, :cond_6c

    const v9, 0x10403ab

    :goto_2a
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I

    move-result v5

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v10, :cond_34

    if-ne v4, v11, :cond_77

    :cond_34
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v10, :cond_70

    if-ne v4, v11, :cond_70

    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "clear type confirm dialog"

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/app/AlertDialog$Builder;

    const v10, 0x103031f

    invoke-direct {v7, p0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_4b
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v10, p0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v10}, Lcom/android/server/power/ShutdownThread$9;-><init>()V

    invoke-virtual {v7, v13, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x96b

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    :goto_6b
    return-object v6

    :cond_6c
    const v9, 0x1040865

    goto :goto_2a

    :cond_70
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x5

    invoke-direct {v7, p0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_4b

    :cond_77
    new-instance v8, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v8, p0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getTitleText()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    new-instance v10, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v10, p0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v8, v13, p1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v8}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x833

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120094

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_b3

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    :cond_b3
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v10, 0x1

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v12}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    move-object v6, v1

    goto :goto_6b
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 6

    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_17

    :cond_f
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v3, :cond_3a

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v3, :cond_3a

    :cond_17
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "createMConfirmDialog"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_34
    iput-object v1, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1

    :cond_3a
    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread;->createBeforeMConfirmDialog(Landroid/content/Context;Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;

    move-result-object v1

    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "createBeforeMConfirmDialog"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private static createMConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 4

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    const v2, 0x1030011

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;ILandroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownThread$5;->init()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method private static deviceOemShutdown()V
    .registers 10

    const-string/jumbo v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Shutdown critical subsyslist is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Waiting for a maximum of 10000ms"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x1

    array-length v4, v3

    :cond_3a
    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v4, :cond_6f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendor.peripheral."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ONLINE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    const/4 v2, 0x0

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_6f
    if-nez v2, :cond_78

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v6, v6, 0x1

    :cond_78
    if-nez v2, :cond_7e

    const/16 v7, 0x64

    if-lt v6, v7, :cond_3a

    :cond_7e
    if-nez v2, :cond_d7

    const/4 v0, 0x0

    :goto_81
    array-length v7, v3

    if-ge v0, v7, :cond_e0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendor.peripheral."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ONLINE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d4

    const-string/jumbo v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Subsystem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " did not shut down within timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_d7
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Vendor subsystem(s) shutdown successful"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    return-void
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_2
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_7} :catch_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_47

    move-result-object v0

    :try_start_8
    const-string/jumbo v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_30} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_30} :catch_52

    return v11

    :catch_31
    move-exception v3

    :try_start_32
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return v10

    :catch_3c
    move-exception v4

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@call method fail rebootOrShutdown"

    invoke-static {v6, v7, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_46} :catch_52
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_46} :catch_47

    return v10

    :catch_47
    move-exception v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_52
    move-exception v1

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@can\'t found class"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private static getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .registers 4

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v1, :cond_10

    :cond_c
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v1, :cond_18

    :cond_10
    const v1, 0x1080aa0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v1, :cond_2e

    if-nez p1, :cond_26

    const v1, 0x1080a9c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_26
    const v1, 0x1080a9d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_2e
    if-nez p1, :cond_38

    const v1, 0x1080a98

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    :cond_38
    const v1, 0x1080a99

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17
.end method

.method private static getButtonView(Landroid/content/Context;Z)Landroid/widget/ImageView;
    .registers 8

    const v5, 0x3fa66666    # 1.3f

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->getButtonDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static getDescriptionText(Landroid/content/Context;)I
    .registers 7

    const/4 v5, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v2, :cond_32

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v2, :cond_32

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v2, :cond_36

    :cond_32
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v2, :cond_3a

    :cond_36
    const v0, 0x104039c

    :goto_39
    return v0

    :cond_3a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_42

    const v0, 0x1040878

    goto :goto_39

    :cond_42
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v2, :cond_66

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_58

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_54

    const v0, 0x104039b

    goto :goto_39

    :cond_54
    const v0, 0x104039a

    goto :goto_39

    :cond_58
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_62

    const v0, 0x1040399

    goto :goto_39

    :cond_62
    const v0, 0x1040398

    goto :goto_39

    :cond_66
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_83

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_83

    const-string/jumbo v2, "vzw"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const v0, 0x1040b09

    goto :goto_39

    :cond_83
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_91

    if-ne v1, v5, :cond_8d

    const v0, 0x104089d

    goto :goto_39

    :cond_8d
    const v0, 0x104089c

    goto :goto_39

    :cond_91
    if-ne v1, v5, :cond_97

    const v0, 0x104097d

    goto :goto_39

    :cond_97
    const v0, 0x104097c

    goto :goto_39
.end method

.method private static getDescriptionView(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v5, 0x439b0000    # 310.0f

    invoke-static {v9, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v6, v1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v9, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getDescriptionText(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p1, :cond_57

    const v5, 0x1060217

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_56
    return-object v0

    :cond_57
    const v5, 0x1060215

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_56
.end method

.method private static getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x104087f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_35

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_28
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x96b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    return-object v0

    :cond_35
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x104087e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 12

    const/16 v11, 0x1b4

    const/4 v10, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v5, v6, v8

    if-lez v5, :cond_b0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7e

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7e
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a7
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return-object v0
.end method

.method private static getTextView(Landroid/content/Context;Z)Landroid/widget/TextView;
    .registers 7

    const/4 v4, 0x2

    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getTitleText()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_30

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x1060214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2f
    return-object v0

    :cond_30
    const v2, 0x41866666    # 16.8f

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x1060212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2f
.end method

.method private static getTitleText()I
    .registers 2

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->N_STYLE_CONFIRM:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v1, :cond_10

    :cond_c
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v1, :cond_14

    :cond_10
    const v0, 0x10403ac

    :goto_13
    return v0

    :cond_14
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_1c

    const v0, 0x1040879

    goto :goto_13

    :cond_1c
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v1, :cond_24

    const v0, 0x10403ab

    goto :goto_13

    :cond_24
    const v0, 0x10403a5

    goto :goto_13
.end method

.method public static hasTSafeLock(Landroid/content/Context;)Z
    .registers 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_19

    move-result-object v4

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    :cond_16
    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16

    :catch_19
    move-exception v1

    return v7
.end method

.method private static initBixbyVariables()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsItemLongpressed:Z

    return-void
.end method

.method private static isConfirmAvailable(Landroid/content/Context;)Z
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "keyguard"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    :goto_15
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v6, "temp"

    aput-object v6, v3, v8

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v6, :cond_27

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_27
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-nez v6, :cond_2f

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_43

    :cond_2f
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z

    if-eqz v6, :cond_43

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_function_val"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_43

    return v8

    :cond_41
    const/4 v1, 0x0

    goto :goto_15

    :cond_43
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isTSafeLock(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_64

    if-eqz v1, :cond_64

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_64

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_64

    const v6, 0x10403d0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v8

    :cond_64
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSKTCarrierLockPlusEnabled()Z

    move-result v6

    if-nez v6, :cond_70

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isFMMlocked()Z

    move-result v6

    if-eqz v6, :cond_91

    :cond_70
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_89

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_89

    const v6, 0x10403d1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_81
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v8

    :cond_89
    const v6, 0x10403d3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_81

    :cond_91
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v6, "true"

    aput-object v6, v4, v8

    const-string/jumbo v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v7, "isPowerOffAllowed"

    invoke-static {p0, v6, v7, v4}, Lcom/android/server/power/ShutdownThread;->isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "power or restart : restricted by MDM "

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_b5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isRMMlocked()Z

    move-result v6

    if-eqz v6, :cond_bc

    return v9

    :cond_bc
    if-eqz v1, :cond_e1

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v6, :cond_e1

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendBendedPendingIntent(Landroid/content/Context;)V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    return v8

    :cond_e1
    return v9
.end method

.method public static isConfirmDialog()Z
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static isEDM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz p0, :cond_22

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_22
    :goto_22
    if-eqz v6, :cond_32

    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_3f

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    return-object v7

    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_22

    :catchall_3f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isFMMlocked()Z
    .registers 2

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static isPossibleRebootSafeMode(Landroid/content/Context;)Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v4

    :cond_14
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v4

    :cond_1b
    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "safe mode is not allowed by IT admin"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3c
    const/4 v2, 0x1

    return v2
.end method

.method private isPoweredPlugged()Z
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1c

    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private static isRMMlocked()Z
    .registers 2

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static isSKTCarrierLockPlusEnabled()Z
    .registers 2

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private static isTSafeLock(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    return v2

    :cond_5
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->hasTSafeLock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    const-string/jumbo v0, "off_menu_setting"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    move v1, v2

    goto :goto_1c
.end method

.method private static isTablet()Z
    .registers 2

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

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11

    const/16 v1, 0x3a

    const-string/jumbo v0, "com.google.android.marvin.talkback"

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1c

    const-string/jumbo v6, ""

    :cond_1c
    move-object v2, v7

    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_20

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x1

    return v8

    :cond_4a
    const/4 v8, 0x0

    return v8
.end method

.method public static isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    aget v4, v0, v6

    int-to-float v4, v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    aget v4, v0, v7

    int-to-float v4, v4

    sub-float v2, v3, v4

    cmpg-float v3, v1, v5

    if-ltz v3, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_29

    :cond_28
    return v6

    :cond_29
    cmpg-float v3, v2, v5

    if-ltz v3, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_28

    return v7
.end method

.method private static needQcOemShutdown()Z
    .registers 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "ro.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "8084"

    aput-object v3, v2, v4

    const-string/jumbo v3, "exynos"

    aput-object v3, v2, v7

    array-length v5, v2

    move v3, v4

    :goto_18
    if-ge v3, v5, :cond_26

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    return v4

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_26
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    return v7
.end method

.method private static needSyncQcRmtStorage()Z
    .registers 4

    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "storage.efs_sync.done"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    return v2

    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method private static readSalesCode()Ljava/lang/String;
    .registers 3

    const-string/jumbo v1, ""

    :try_start_3
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_18

    move-result-object v1

    :cond_17
    :goto_17
    return-object v1

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static rebootByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "rebootByBixby confirm by reboot twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_12
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 11

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@call oem shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ro.baseband"

    const-string/jumbo v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needSyncQcRmtStorage()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->syncQcRmtStorage()V

    :cond_1c
    sget-object v5, Lcom/android/server/power/ShutdownThread;->subsysProp:Ljava/lang/String;

    const-string/jumbo v6, "ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->deviceOemShutdown()V

    :cond_2a
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@waitForAnimEnd"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "!@"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_83

    const-string/jumbo v5, "reboot : "

    :goto_4b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_87

    const-string/jumbo v5, "null"

    :goto_53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ShutdownThread"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    if-eqz p1, :cond_94

    const-string/jumbo v5, "poweroff_sound=suspend"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    :try_start_6e
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_89

    :cond_71
    :goto_71
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@Performing low-level shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void

    :cond_83
    const-string/jumbo v5, "shutdown : "

    goto :goto_4b

    :cond_87
    move-object v5, p2

    goto :goto_53

    :catch_89
    move-exception v1

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_71

    :cond_94
    if-eqz p0, :cond_71

    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x1f4

    :try_start_9d
    sget-object v5, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_aa

    :goto_a2
    const-wide/16 v6, 0x1f4

    :try_start_a4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_71

    :catch_a8
    move-exception v3

    goto :goto_71

    :catch_aa
    move-exception v1

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@Failed to vibrate during shutdown."

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_a2
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isPossibleRebootSafeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot safe reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static rebootSafeModeByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isPossibleRebootSafeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "rebootSafeModeByBixby confirm by reboot twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    :goto_19
    return-void

    :cond_1a
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot safe mode by bixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_19
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    if-eqz p1, :cond_b

    const-wide/16 v2, 0x12c

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_b
.end method

.method private static runConfirm(Landroid/content/Context;)V
    .registers 11

    const-wide/16 v8, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3e2e147b    # 0.17f

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isConfirmAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    const/16 v1, 0x12c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    const/16 v4, 0x99

    const/16 v5, 0xff

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v6, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v2, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 11

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_e
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_7c
    .catchall {:try_start_e .. :try_end_14} :catchall_88

    :try_start_14
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    if-eqz v7, :cond_4e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "caller : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_70} :catch_97
    .catchall {:try_start_14 .. :try_end_70} :catchall_94

    if-eqz v5, :cond_75

    :try_start_72
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_77

    :cond_75
    :goto_75
    move-object v4, v5

    :cond_76
    :goto_76
    return-void

    :catch_77
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    :catch_7c
    move-exception v1

    :goto_7d
    if-eqz v4, :cond_76

    :try_start_7f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_76

    :catch_83
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_76

    :catchall_88
    move-exception v7

    :goto_89
    if-eqz v4, :cond_8e

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    :cond_8e
    :goto_8e
    throw v7

    :catch_8f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    :catchall_94
    move-exception v7

    move-object v4, v5

    goto :goto_89

    :catch_97
    move-exception v1

    move-object v4, v5

    goto :goto_7d
.end method

.method private static sendBendedPendingIntent(Landroid/content/Context;)V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "send secure lock intent"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "POWER_OFF_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static setInputKeysDisable(Z)V
    .registers 6

    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    if-nez v1, :cond_28

    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    :try_start_28
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_45
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$14;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p3, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, p1, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method public static shutdownByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shutdownByBixby confirm by shutdown twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_12
.end method

.method public static shutdownConfirmByBixby(Z)V
    .registers 4

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownConfirmByBixby, Confirm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v0, :cond_23

    if-eqz p0, :cond_24

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    :cond_23
    :goto_23
    return-void

    :cond_24
    sget-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    goto :goto_23
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .registers 14

    const/4 v10, 0x0

    sget-object v8, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_16

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v9, "!@Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_c9

    monitor-exit v8

    return-void

    :cond_16
    :try_start_16
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v7, :cond_25

    if-eqz p1, :cond_25

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v9, "!@duplicate shutdown confirm dialog request."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_c9

    :try_start_28
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_30

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v7, :cond_57

    :cond_30
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_57

    if-nez p2, :cond_57

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_57

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v9, "Shutdown Disabled by Administrator"

    invoke-static {v7, v9}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_54} :catch_56
    .catchall {:try_start_28 .. :try_end_54} :catchall_c9

    monitor-exit v8

    return-void

    :catch_56
    move-exception v1

    :cond_57
    monitor-exit v8

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v0, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mDexModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v7, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    if-eqz p1, :cond_cc

    const-string/jumbo v7, "silent.sec"

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_cc

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "reason"

    const-string/jumbo v8, "shutdown_confirm_dialog_close"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_b6

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    :cond_b6
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v7

    sput-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v7, :cond_c8

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    :cond_c8
    :goto_c8
    return-void

    :catchall_c9
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_cc
    const-wide/16 v8, 0x32

    :try_start_ce
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d1
    .catch Ljava/lang/InterruptedException; {:try_start_ce .. :try_end_d1} :catch_de

    :goto_d1
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v10}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto :goto_c8

    :catch_de
    move-exception v2

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "InterruptedException"

    invoke-static {v7, v8, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_d1
.end method

.method private shutdownRadios(I)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v4, v8, v10

    const/4 v2, 0x1

    new-array v7, v2, [Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/server/power/ShutdownThread$17;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ShutdownThread$17;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    int-to-long v8, p1

    :try_start_22
    invoke-virtual {v1, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_34

    :goto_25
    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    if-nez v2, :cond_33

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC and Radio shutdown."

    invoke-static {v2, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_25
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x1040865

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104097e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v2, :cond_58

    :goto_11
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z

    if-eqz v2, :cond_20

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Dex mode is enabled"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v2, 0x1

    sput v2, Lcom/android/server/power/ShutdownThread;->uncryptStep:I

    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_33
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    const v1, 0x104087d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    sget v5, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    invoke-static {p0, v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_5a

    monitor-exit v3

    return-void

    :cond_58
    move v2, v1

    goto :goto_11

    :catchall_5a
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private startShutdownDialog()V
    .registers 5

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/ShutdownThread$11;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "Shutdown animation will start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v0, "silent.sec"

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_3f
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    :cond_45
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    :goto_4f
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    :cond_58
    return-void

    :cond_59
    sput-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_4f
.end method

.method private static startShutdownThread()V
    .registers 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$12;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Android will be shutdown"

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$13;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_36
    return-void
.end method

.method private static syncQcRmtStorage()V
    .registers 7

    const/16 v0, 0x64

    const-string/jumbo v4, "storage.efs_sync.done"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_d
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_49

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_49

    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "!@rmtStorage sync not yet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    :try_start_3a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_47

    :goto_3d
    const-string/jumbo v4, "storage.efs_sync.done"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_47
    move-exception v3

    goto :goto_3d

    :cond_49
    return-void
.end method

.method public static systemReboot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReboot - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v3, v4}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static systemReboot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReboot - reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    invoke-static {p0, v3, v4}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .registers 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v6, 0x11

    new-array v3, v6, [D

    fill-array-data v3, :array_34

    if-eqz v0, :cond_31

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/16 v6, 0xf

    if-le v1, v6, :cond_22

    const/16 v1, 0xf

    :cond_22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_24
    new-instance v6, Landroid/speech/tts/TextToSpeech;

    new-instance v7, Lcom/android/server/power/ShutdownThread$20;

    invoke-direct {v7, v4, v5, p1}, Lcom/android/server/power/ShutdownThread$20;-><init>(DLjava/lang/String;)V

    invoke-direct {v6, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void

    :cond_31
    const-wide/16 v4, 0x0

    goto :goto_24

    :array_34
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Calling uncrypt and monitoring the progress..."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/power/ShutdownThread$18;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$18;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v4, 0x1

    new-array v0, v4, [Z

    aput-boolean v6, v0, v6

    new-instance v2, Lcom/android/server/power/ShutdownThread$19;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/power/ShutdownThread$19;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/32 v4, 0xdbba0

    :try_start_1f
    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_56

    :goto_22
    aget-boolean v4, v0, v6

    if-nez v4, :cond_2f

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Timed out waiting for uncrypt."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "uncrypt finished."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x64

    sput v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const v5, 0x104087e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v5, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v6, Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v6}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V

    return-void

    :catch_56
    move-exception v3

    goto :goto_22
.end method

.method private static waitIfTimeoutDumpWorking()V
    .registers 5

    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_26

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_26} :catch_36
    .catchall {:try_start_0 .. :try_end_26} :catchall_46

    :cond_26
    :goto_26
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2b
    return-void

    :cond_2c
    :try_start_2c
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_35} :catch_36
    .catchall {:try_start_2c .. :try_end_35} :catchall_46

    goto :goto_26

    :catch_36
    move-exception v0

    :try_start_37
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_46

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2b

    :catchall_46
    move-exception v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method actionDone()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method actionDoneMount()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 39

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->-wrap0()V

    new-instance v6, Lcom/android/server/power/ShutdownThread$15;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$15;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_170

    const-string/jumbo v2, "1"

    :goto_16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_175

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x5b

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v2, :cond_49

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sRebootSafeModeByBixby:Z

    if-eqz v2, :cond_52

    :cond_49
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_94

    const-string/jumbo v2, "no power"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17a

    :cond_94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    :goto_9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_a1
    :try_start_a1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_185

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a1 .. :try_end_bc} :catchall_1b9

    :cond_bc
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_cc

    const/4 v2, 0x2

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_cc
    const-string/jumbo v2, "dev.shutdownbroadcast.on"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v2, "On"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "shutdown"

    invoke-static {v2}, Landroid/os/Debug;->saveDumpsys(Ljava/lang/String;)V

    :cond_eb
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    if-eqz v11, :cond_106

    const/16 v2, 0x2710

    :try_start_103
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_106} :catch_1bc

    :cond_106
    :goto_106
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_115

    const/4 v2, 0x4

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_115
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down package manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    check-cast v30, Lcom/android/server/pm/PackageManagerService;

    if-eqz v30, :cond_12c

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_12c
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_13b

    const/4 v2, 0x6

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_13b
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_152

    const/16 v2, 0x12

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v4, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_152
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_1bf

    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1bf

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_170
    const-string/jumbo v2, "0"

    goto/16 :goto_16

    :cond_175
    const-string/jumbo v2, ""

    goto/16 :goto_20

    :cond_17a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0x13880

    add-long v20, v4, v8

    goto/16 :goto_9c

    :cond_185
    :try_start_185
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_1a7

    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v36

    const-wide v36, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v36

    double-to-int v2, v8

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v5, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_1a7
    .catchall {:try_start_185 .. :try_end_1a7} :catchall_1b9

    :cond_1a7
    :try_start_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1b4
    .catch Ljava/lang/InterruptedException; {:try_start_1a7 .. :try_end_1b4} :catch_1b6
    .catchall {:try_start_1a7 .. :try_end_1b4} :catchall_1b9

    goto/16 :goto_a1

    :catch_1b6
    move-exception v17

    goto/16 :goto_a1

    :catchall_1b9
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_1bc
    move-exception v13

    goto/16 :goto_106

    :cond_1bf
    new-instance v29, Lcom/android/server/power/ShutdownThread$16;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$16;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x7530

    add-long v18, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1e3
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v28

    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38f

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_20c} :catch_396
    .catchall {:try_start_1e3 .. :try_end_20c} :catchall_3a4

    :goto_20c
    :try_start_20c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_250

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    const-string/jumbo v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_3b2

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_250
    .catchall {:try_start_20c .. :try_end_250} :catchall_3a4

    :cond_250
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_264

    const/16 v2, 0x14

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_264
    const-string/jumbo v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v31

    const-string/jumbo v2, "true"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a5

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_2a5

    const-string/jumbo v2, "1"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2a5

    if-eqz v31, :cond_2a5

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const-string/jumbo v2, "charging"

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :cond_2a5
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_334

    const-string/jumbo v2, "recovery"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_334

    const-string/jumbo v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reboot, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v25, 0x0

    :try_start_2e3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32a

    new-instance v24, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_300} :catch_421
    .catchall {:try_start_2e3 .. :try_end_300} :catchall_447

    :try_start_300
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_47e

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Leave a log in recovery cause node because the node is empty"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Ljava/io/FileWriter;

    const-string/jumbo v2, "/sys/class/sec/sec_debug/recovery_cause"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_300 .. :try_end_31a} :catch_474
    .catchall {:try_start_300 .. :try_end_31a} :catchall_46a

    :try_start_31a
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    if-nez v2, :cond_3eb

    const-string/jumbo v2, "Do recovery reboot, empty file.\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_326
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_326} :catch_478
    .catchall {:try_start_31a .. :try_end_326} :catchall_46e

    move-object/from16 v25, v26

    move-object/from16 v23, v24

    :cond_32a
    :goto_32a
    if-eqz v23, :cond_32f

    :try_start_32c
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    :cond_32f
    if-eqz v25, :cond_334

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileWriter;->close()V
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_334} :catch_413

    :cond_334
    :goto_334
    const-string/jumbo v2, "mrvl"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34a

    const-string/jumbo v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_34a
    const-string/jumbo v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_460

    const-string/jumbo v2, "reboot"

    :goto_360
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " requested "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_465

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_378
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    :cond_38f
    if-eqz v28, :cond_3a7

    :try_start_391
    invoke-interface/range {v28 .. v29}, Landroid/os/storage/IStorageManager;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    :try_end_394
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_394} :catch_396
    .catchall {:try_start_391 .. :try_end_394} :catchall_3a4

    goto/16 :goto_20c

    :catch_396
    move-exception v16

    :try_start_397
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_3a2
    .catchall {:try_start_397 .. :try_end_3a2} :catchall_3a4

    goto/16 :goto_20c

    :catchall_3a4
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_3a7
    :try_start_3a7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_3a7 .. :try_end_3b0} :catch_396
    .catchall {:try_start_3a7 .. :try_end_3b0} :catchall_3a4

    goto/16 :goto_20c

    :cond_3b2
    const-wide/16 v8, 0x7530

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v36

    const-wide v36, 0x40dd4c0000000000L    # 30000.0

    div-double v8, v8, v36

    double-to-int v2, v8

    :try_start_3c6
    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    add-int/lit8 v2, v2, 0x12

    sput v2, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget v5, Lcom/android/server/power/ShutdownThread;->progressStatus:I

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_3d6
    .catchall {:try_start_3c6 .. :try_end_3d6} :catchall_3a4

    :try_start_3d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3e3
    .catch Ljava/lang/InterruptedException; {:try_start_3d6 .. :try_end_3e3} :catch_3e5
    .catchall {:try_start_3d6 .. :try_end_3e3} :catchall_3a4

    goto/16 :goto_20c

    :catch_3e5
    move-exception v17

    :try_start_3e6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3e9
    .catchall {:try_start_3e6 .. :try_end_3e9} :catchall_3a4

    goto/16 :goto_20c

    :cond_3eb
    :try_start_3eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Do recovery reboot, called by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mCallerName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_40d} :catch_478
    .catchall {:try_start_3eb .. :try_end_40d} :catchall_46e

    move-object/from16 v25, v26

    move-object/from16 v23, v24

    goto/16 :goto_32a

    :catch_413
    move-exception v16

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "recovery cause file close exception"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_334

    :catch_421
    move-exception v16

    :goto_422
    :try_start_422
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "recovery cause exception"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_42d
    .catchall {:try_start_422 .. :try_end_42d} :catchall_447

    if-eqz v23, :cond_432

    :try_start_42f
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    :cond_432
    if-eqz v25, :cond_334

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileWriter;->close()V
    :try_end_437
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_437} :catch_439

    goto/16 :goto_334

    :catch_439
    move-exception v16

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "recovery cause file close exception"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_334

    :catchall_447
    move-exception v2

    :goto_448
    if-eqz v23, :cond_44d

    :try_start_44a
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    :cond_44d
    if-eqz v25, :cond_452

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileWriter;->close()V
    :try_end_452
    .catch Ljava/lang/Exception; {:try_start_44a .. :try_end_452} :catch_453

    :cond_452
    :goto_452
    throw v2

    :catch_453
    move-exception v16

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "recovery cause file close exception"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_452

    :cond_460
    const-string/jumbo v2, "shutdown"

    goto/16 :goto_360

    :cond_465
    const-string/jumbo v2, "null"

    goto/16 :goto_378

    :catchall_46a
    move-exception v2

    move-object/from16 v23, v24

    goto :goto_448

    :catchall_46e
    move-exception v2

    move-object/from16 v25, v26

    move-object/from16 v23, v24

    goto :goto_448

    :catch_474
    move-exception v16

    move-object/from16 v23, v24

    goto :goto_422

    :catch_478
    move-exception v16

    move-object/from16 v25, v26

    move-object/from16 v23, v24

    goto :goto_422

    :cond_47e
    move-object/from16 v23, v24

    goto/16 :goto_32a
.end method
