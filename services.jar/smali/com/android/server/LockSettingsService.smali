.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$1;,
        Lcom/android/server/LockSettingsService$2;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$Injector;,
        Lcom/android/server/LockSettingsService$Lifecycle;,
        Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/LockSettingsService$VirtualLock;
    }
.end annotation


# static fields
.field private static final ACTION_DUMP_SYNTHETIC_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

.field private static final ALLOW_FAIL_COUNT:Ljava/lang/String; = "allowfailcount"

.field private static final CLIENT_NAME:Ljava/lang/String; = "clientname"

.field private static final DEBUG:Z = false

.field private static final DEVICE_SUPPORT_KNOX_SDP:Z = true

.field private static final DUMP:Z

.field private static final ENABLE_EMERGENCY_CALL:Ljava/lang/String; = "enableemergencycall"

.field private static final EXTRA_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_USERID:Ljava/lang/String; = "urid"

.field private static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOCK_TIME:Ljava/lang/String; = "locktime"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NULL_USER:Landroid/content/pm/UserInfo;

.field private static final PERMANENT_BLOCK_COUNT:Ljava/lang/String; = "permanentblockcount"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final REMOTE_LOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field private static final REMOTE_LOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_SDP:Ljava/lang/String; = "LockSettingsService.SDP"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/LockSettingsService$Injector;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeForPasswordCheck:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPassword:Ljava/lang/String;

.field private mRemoteCallback:Landroid/os/IRemoteCallback;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private mSpDump:Lcom/android/server/SyntheticPasswordDump;

.field private final mSpDumpReceiver:Landroid/content/BroadcastReceiver;

.field private mSpManager:Lcom/android/server/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordDump;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpDump:Lcom/android/server/SyntheticPasswordDump;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasNoneTypeCredntial(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/LockSettingsService;[BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/LockSettingsService;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSecurityStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/LockSettingsService;)Ljava/util/Optional;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/LockSettingsService;I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap14(Lcom/android/server/LockSettingsService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap15(Lcom/android/server/LockSettingsService;[BLjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->doSelfRecovery([BLjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/LockSettingsService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/LockSettingsService;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isLegacyContainerUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordPerUserLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 10

    invoke-direct/range {p0 .. p7}, Lcom/android/server/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LockSettingsService;->DUMP:Z

    new-instance v0, Landroid/content/pm/UserInfo;

    const/16 v1, -0x2710

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/LockSettingsService;->NULL_USER:Landroid/content/pm/UserInfo;

    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    const/16 v2, 0x3e8

    filled-new-array {v0, v1, v4, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v6

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v7

    const-string/jumbo v1, "lockscreen.password_type_alternate"

    aput-object v1, v0, v8

    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "lockscreen.profilechallenge"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;-><init>(Lcom/android/server/LockSettingsService$Injector;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/LockSettingsService$Injector;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/LockSettingsService;->DUMP:Z

    if-eqz v0, :cond_84

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_84
    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getStorage()Lcom/android/server/LockSettingsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/LockSettingsStrongAuth;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {p1, v0}, Lcom/android/server/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/LockSettingsStorage;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    new-instance v0, Lcom/android/server/SyntheticPasswordDump;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/SyntheticPasswordDump;-><init>(Landroid/content/Context;Lcom/android/server/SyntheticPasswordManager;Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSpDump:Lcom/android/server/SyntheticPasswordDump;

    new-instance v0, Lcom/android/server/LockSettingsService$VirtualLock;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$VirtualLock;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$VirtualLock;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v3, p2}, Lcom/android/server/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    goto :goto_10

    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_47
    monitor-exit v4

    return-void
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_17
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_60

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_60
    const/4 v1, 0x0

    :goto_61
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_bc

    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b9

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_bc
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cleanupAbnormalState()V
    .registers 11

    :try_start_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-ge v4, v6, :cond_43

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-nez v6, :cond_46

    :cond_33
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v6

    if-nez v6, :cond_43

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_46
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x80000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x70000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_33

    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_8c

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v6

    if-nez v6, :cond_43

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_43

    :catch_81
    move-exception v1

    const-string/jumbo v6, "LockSettingsService"

    const-string/jumbo v7, "Unable to clear abnormal state"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    return-void

    :cond_8c
    const-wide/32 v6, 0x10001

    cmp-long v6, v2, v6

    if-nez v6, :cond_43

    :try_start_93
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v6

    if-nez v6, :cond_43

    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_43

    :cond_a4
    const-string/jumbo v6, "LockSettingsService"

    const-string/jumbo v7, "migrated : if no password saved, clear lock type."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_ad} :catch_81

    goto :goto_8b
.end method

.method private clearUserKeyProtection(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    :goto_10
    return-object v0

    :cond_11
    if-nez v1, :cond_2b

    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    if-nez v2, :cond_25

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "verifyChallenge response had no associated payload"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_10

    :cond_25
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    goto :goto_10

    :cond_2b
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_10
.end method

.method private createSelfRecoveryRunnable([BLjava/lang/String;I)Ljava/lang/Runnable;
    .registers 5

    new-instance v0, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;[BLjava/lang/String;I)V

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Virtual user can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_ab
    .catchall {:try_start_4 .. :try_end_13} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Managed profile can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_ab
    .catchall {:try_start_17 .. :try_end_2c} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_49

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Corp-owned device can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_45} :catch_ab
    .catchall {:try_start_30 .. :try_end_45} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_49
    :try_start_49
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5c

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "User with profile owner can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_58} :catch_ab
    .catchall {:try_start_49 .. :try_end_58} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5c
    :try_start_5c
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_6f

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6b} :catch_ab
    .catchall {:try_start_5c .. :try_end_6b} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6f
    :try_start_6f
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_7b} :catch_ab
    .catchall {:try_start_6f .. :try_end_7b} :catchall_b9

    move-result v4

    if-eqz v4, :cond_82

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_82
    :try_start_82
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disabling escrow token on user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_a7

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v4, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyEscrowData(I)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_a7} :catch_ab
    .catchall {:try_start_82 .. :try_end_a7} :catchall_b9

    :cond_a7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_aa
    return-void

    :catch_ab
    move-exception v1

    :try_start_ac
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "disableEscrowTokenOnNonManagedDevices"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_b9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_aa

    :catchall_b9
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doPostVerification(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    invoke-static {p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_29
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_3d
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/LockSettingsService;->createSelfRecoveryRunnable([BLjava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_29

    :cond_49
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method private doSelfRecovery([BLjava/lang/String;I)V
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string/jumbo v4, "Generational shift failure detected with user %d subject to self-recovery"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "Self-recovery - Failed due to invalied master key"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_2e
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_31
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    return-void

    :cond_3c
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$22;

    invoke-direct {v5, p3, p2}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string/jumbo v4, "Self-recovery - Failed due to invalid legacy key"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2e

    :cond_5d
    move-object v0, p1

    move-object v2, v3

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$29;

    invoke-direct {v5, p3, p1, v3}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$29;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_83

    const-string/jumbo v4, "Self-recovery - Failed in generational shift"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2e

    :cond_83
    const-string/jumbo v4, "Self-recovery - Successfully done!"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$16;

    invoke-direct {v5, p3, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2e
.end method

.method private doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    :cond_6
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Make sure to give correct input"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Verify and migrate credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "credential"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "credentialType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$32;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$32;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v9

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    :try_start_74
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_95

    move-result-object v8

    monitor-exit v9

    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Result of sp verified migration  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v8

    :catchall_95
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private doSyntheticPasswordFullMigrationAsync(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    :cond_7
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Make sure to give correct input"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Verify and migrate credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "credential"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "credentialType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$23;

    invoke-direct {v1, p3, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$23;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz v9, :cond_ce

    new-instance v10, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v10, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$17;

    invoke-direct {v1, p3, v9}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$17;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "credential"

    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "userId"

    invoke-virtual {v8, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY;

    invoke-direct {v1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$1;

    invoke-direct {v1, v8}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b2
    :goto_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Result of sp verified migration  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v10

    :cond_ce
    const-string/jumbo v0, "sp full migration - Failed in verification due to invalid credential"

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_b2

    :cond_d5
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$33;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$33;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v11, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v11

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    :try_start_fb
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_101

    move-result-object v10

    monitor-exit v11

    goto :goto_b2

    :catchall_101
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Verify credential for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "credential"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "credentialType"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "userId"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p6 .. p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/LockSettingsService$VirtualLock;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    :cond_5a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Credential can\'t be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_69
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    move/from16 v0, p6

    invoke-direct {p0, v11, v0}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    if-eqz v11, :cond_76

    return-object v11

    :cond_76
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isSecureFolderUser(I)Z

    move-result v2

    if-eqz v2, :cond_9c

    move/from16 v0, p2

    move/from16 v1, p6

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->doSyntheticPasswordFullMigrationAsync(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    :goto_96
    move/from16 v0, p6

    invoke-direct {p0, v11, v0}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-object v11

    :cond_9c
    move/from16 v0, p2

    move/from16 v1, p6

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->migrateToSyntheticPasswordBased(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    goto :goto_96

    :cond_a5
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/server/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    iget v2, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_df

    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " passed in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v2

    :cond_df
    iget v2, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11b

    iget-boolean v12, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    :goto_e6
    if-eqz v12, :cond_11d

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_ec
    move-object v3, p0

    move/from16 v4, p6

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_104

    move/from16 v0, p6

    invoke-direct {p0, v11, v0}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    :cond_104
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/android/server/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    if-eqz v12, :cond_11a

    iget v2, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    move/from16 v0, p6

    invoke-direct {p0, p1, v2, v6, v0}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_11a
    return-object v11

    :cond_11b
    const/4 v12, 0x0

    goto :goto_e6

    :cond_11d
    move-object v6, p1

    goto :goto_ec
.end method

.method private dumpLocksettings()V
    .registers 3

    const-string/jumbo v0, "running"

    const-string/jumbo v1, "init.svc.bugreportsa"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Running bugreport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "start bugreport - lockSettingsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dumpstate.options"

    const-string/jumbo v1, "bugreport_locksettings_error"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bugreportsa"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enableSyntheticPasswordLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enable-sp"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private enableSyntheticPasswordPerUserLocked(I)V
    .registers 6

    :try_start_0
    const-string/jumbo v1, "enable-sp-per-user"

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enable sp for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to enable sp for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method private enforceShell()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-nez p2, :cond_1e

    const/4 v0, 0x0

    :goto_7
    if-nez p3, :cond_23

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    if-nez v2, :cond_28

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "response is Null."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1e
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7

    :cond_23
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_a

    :cond_28
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_31
    return-object v1

    :cond_32
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private ensureCallerSystemUid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_17

    const/16 v1, 0x4e2

    if-eq v0, v1, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only system can call this API."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    return-void
.end method

.method private finalizeLegacyResetRequest(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$5;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$5;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v7

    if-eqz v7, :cond_8

    return-object v8

    :cond_8
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_15

    return-object v8

    :cond_15
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v6, :cond_4e

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_36
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_33

    :try_start_40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/security/KeyStoreException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/security/cert/CertificateException; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_33

    :catch_4c
    move-exception v0

    goto :goto_33

    :cond_4e
    return-object v5
.end method

.method private getProcessName(I)Ljava/lang/String;
    .registers 9

    const-string/jumbo v5, "Unidentified"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v1, :cond_15

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_15

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2d
    .catchall {:try_start_7 .. :try_end_29} :catchall_35

    :cond_29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2c
    return-object v5

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_35
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityStatus(I)Ljava/lang/String;
    .registers 14

    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v8}, Lcom/android/server/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v6

    :goto_c
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_73

    const/4 v4, 0x1

    :goto_27
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v8, p1}, Lcom/android/server/LockSettingsStorage;->hasCredential(I)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    const-string/jumbo v8, "{ Managed? %s, MP? %s, SP? %s, Handle? %s, Credential? %s, Legacy credential? %s, Legacy token? %s }"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_71
    const/4 v6, 0x0

    goto :goto_c

    :cond_73
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .registers 8

    const-wide/16 v4, 0x0

    :try_start_2
    const-string/jumbo v1, "sp-handle"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_c

    move-result-wide v2

    return-wide v2

    :catch_c
    move-exception v0

    return-wide v4
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_10

    :goto_f
    return-object v2

    :cond_10
    sget-object v2, Lcom/android/server/LockSettingsService;->NULL_USER:Landroid/content/pm/UserInfo;

    goto :goto_f
.end method

.method private hasLegacyCredential(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$7;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private hasLegacyToken(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$8;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$8;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private hasNoneTypeCredntial(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Initialize sp for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "credentialHash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "credential"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string/jumbo v1, "credentialType"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "userId"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initialize SyntheticPassword for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/android/server/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    if-nez v4, :cond_7b

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_7b
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v8

    if-eqz p2, :cond_b9

    if-nez p1, :cond_95

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p4}, Lcom/android/server/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_95
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_af
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-string/jumbo v0, "sp-handle"

    invoke-virtual {p0, v0, v8, v9, p4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-object v4

    :cond_b9
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_de

    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p4}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string/jumbo v0, "Skip reset as keystore is in unlocked state"

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_d6
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    goto :goto_af

    :cond_de
    invoke-direct {p0, v6, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_d6
.end method

.method private isCallerShell()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    move v1, v2

    goto :goto_c
.end method

.method private isEnterpriseUser(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$9;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$9;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isKeystoreLocked(I)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    :try_start_5
    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;
    :try_end_b
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_b} :catch_11

    if-ne v3, v4, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e

    :catch_11
    move-exception v0

    goto :goto_e
.end method

.method private isLegacyContainerUser(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$10;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isLegacyResetRequested(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLegacyResetCredentialRequested()Z

    move-result v0

    return v0
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isSecureFolderUser(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-ltz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z

    move-result v4

    return v4

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-string/jumbo v5, "enable-sp"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1e

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    return v4
.end method

.method private isSyntheticPasswordBasedCredentialPerUserLocked(I)Z
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    const-string/jumbo v6, "enable-sp-per-user"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, p1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_1c

    move-result-wide v2

    cmp-long v6, v2, v10

    if-eqz v6, :cond_1a

    cmp-long v6, v4, v10

    if-eqz v6, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19

    :catch_1c
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get sp enabled flag for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19
.end method

.method private isUserSecure(I)Z
    .registers 8

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_1b
    .catchall {:try_start_3 .. :try_end_12} :catchall_24

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_19

    const/4 v1, 0x1

    :goto_17
    monitor-exit v4

    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    :catch_1b
    move-exception v0

    :cond_1c
    monitor-exit v4

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->hasCredential(I)Z

    move-result v1

    return v1

    :catchall_24
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_100074(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isLegacyContainerUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_100624(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialStarted(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_100811(ILcom/android/server/SdpManagerService;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialFinalized(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_102472(Ljava/lang/String;IILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->setLockCredentialViaProtector(Ljava/lang/String;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_106198(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/SdpManagerService;)V
    .registers 5

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->onPasswordChanged(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_106691(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyInitialized([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_107160([BILcom/android/server/SdpManagerService;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_107820(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyDeserted([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_109663(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_110142([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_110480([BILcom/android/server/SdpManagerService;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_111456(Ljava/lang/String;IILcom/android/server/SdpManagerService;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_112865(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_113218([BILcom/android/server/SdpManagerService;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_113599(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpManagerProxy;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService;->getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_113663(Landroid/os/Bundle;Lcom/android/server/SdpManagerService$SdpManagerProxy;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->sendMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_113929(Ljava/lang/String;IILcom/android/server/SdpManagerService;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_115528(Ljava/lang/String;Lcom/android/server/SdpManagerService;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_115814(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_116852([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_117946([BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_119749(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->hasLegacyCredential(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_119976(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_148367(ILcom/android/server/SdpManagerService;)[B
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getResetTokenSafe(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_148680([BILcom/android/server/SdpManagerService;)[B
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_149017([BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 4

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->setResetToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_149278(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;
    .registers 4

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_149921([B[BILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_150164([BILcom/android/server/SdpManagerService;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->saveResetTokenSafe([BI)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_150568(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;
    .registers 4

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_150838(ILcom/android/server/SdpManagerService;)[B
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getResetTokenSafe(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService_99841(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_d

    return-void

    :cond_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    invoke-direct {p0, v3}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    :cond_42
    return-void
.end method

.method private migrateOldData()V
    .registers 39

    :try_start_0
    const-string/jumbo v34, "migrated"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v35, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v34, 0x0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v36, v0

    :goto_28
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_48

    aget-object v32, v35, v34

    move-object/from16 v0, v32

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_45

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_45
    add-int/lit8 v34, v34, 0x1

    goto :goto_28

    :cond_48
    const-string/jumbo v34, "migrated"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lock settings to new location"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const-string/jumbo v34, "migrated_user_specific"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/16 v25, 0x0

    :goto_8f
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v25

    move/from16 v1, v34

    if-ge v0, v1, :cond_142

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    const-string/jumbo v6, "lock_screen_owner_info"

    const-string/jumbo v34, "lock_screen_owner_info"

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_da

    const-string/jumbo v34, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v20

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "lock_screen_owner_info"

    const-string/jumbo v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_da
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_dd} :catch_131

    :try_start_dd
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_114

    const/4 v14, 0x1

    :goto_eb
    const-string/jumbo v35, "lock_screen_owner_info_enabled"

    if-eqz v14, :cond_116

    const/16 v34, 0x1

    :goto_f2
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_102
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_dd .. :try_end_102} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_102} :catch_131

    :cond_102
    :goto_102
    :try_start_102
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8f

    :cond_114
    const/4 v14, 0x0

    goto :goto_eb

    :cond_116
    const/16 v34, 0x0

    goto :goto_f2

    :catch_119
    move-exception v12

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_102

    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    const-wide/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_130} :catch_131

    goto :goto_102

    :catch_131
    move-exception v21

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Unable to migrate old data"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_141
    :goto_141
    return-void

    :cond_142
    :try_start_142
    const-string/jumbo v34, "migrated_user_specific"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated per-user lock settings to new location"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    const-string/jumbo v34, "migrated_biometric_weak"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_1f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/4 v15, 0x0

    :goto_17e
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_1dc

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v26

    const-string/jumbo v34, "lockscreen.password_type_alternate"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    const-wide/32 v34, 0x8000

    cmp-long v34, v26, v34

    if-nez v34, :cond_1c9

    const-string/jumbo v34, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_1c9
    const-string/jumbo v34, "lockscreen.password_type_alternate"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_17e

    :cond_1dc
    const-string/jumbo v34, "migrated_biometric_weak"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f8
    const-string/jumbo v34, "migrated_lockscreen_disabled"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_292

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    const/16 v24, 0x0

    const/4 v15, 0x0

    :goto_21e
    move/from16 v0, v28

    if-ge v15, v0, :cond_235

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v34

    if-eqz v34, :cond_232

    add-int/lit8 v24, v24, 0x1

    :cond_232
    add-int/lit8 v15, v15, 0x1

    goto :goto_21e

    :cond_235
    const/16 v34, 0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-le v0, v1, :cond_276

    const/4 v15, 0x0

    :goto_23e
    move/from16 v0, v28

    if-ge v15, v0, :cond_276

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v34

    if-eqz v34, :cond_273

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_273
    add-int/lit8 v15, v15, 0x1

    goto :goto_23e

    :cond_276
    const-string/jumbo v34, "migrated_lockscreen_disabled"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lockscreen disabled flag"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_292
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->cleanupAbnormalState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/4 v15, 0x0

    :goto_2a0
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_375

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v34

    if-eqz v34, :cond_305

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move-object/from16 v34, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v34

    if-eqz v34, :cond_305

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/16 v36, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    const-wide/16 v34, 0x0

    cmp-long v34, v22, v34

    if-nez v34, :cond_340

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated tied profile lock type"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/32 v36, 0x50000

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_305
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_305} :catch_131

    :cond_305
    :goto_305
    :try_start_305
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "profile_key_name_encrypt_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v34, "AndroidKeyStore"

    invoke-static/range {v34 .. v34}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v19

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_33c

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_33c
    .catch Ljava/security/KeyStoreException; {:try_start_305 .. :try_end_33c} :catch_366
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_305 .. :try_end_33c} :catch_366
    .catch Ljava/security/cert/CertificateException; {:try_start_305 .. :try_end_33c} :catch_366
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_33c} :catch_366
    .catch Landroid/os/RemoteException; {:try_start_305 .. :try_end_33c} :catch_131

    :cond_33c
    :goto_33c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2a0

    :cond_340
    const-wide/32 v34, 0x50000

    cmp-long v34, v22, v34

    if-eqz v34, :cond_305

    :try_start_347
    const-string/jumbo v34, "LockSettingsService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Invalid tied profile lock type: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_305

    :catch_366
    move-exception v13

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Unable to remove tied profile key"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33c

    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const-string/jumbo v35, "android.hardware.type.watch"

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_141

    const-string/jumbo v34, "migrated_wear_lockscreen_disabled"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_141

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    const/4 v15, 0x0

    :goto_3a2
    move/from16 v0, v28

    if-ge v15, v0, :cond_3c7

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3a2

    :cond_3c7
    const-string/jumbo v34, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lockscreen_disabled for Wear devices"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e3
    .catch Landroid/os/RemoteException; {:try_start_347 .. :try_end_3e3} :catch_131

    goto/16 :goto_141
.end method

.method private migrateToSyntheticPasswordBased(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v9, -0x1

    if-ne p2, v9, :cond_e

    :cond_5
    new-instance v9, Landroid/os/RemoteException;

    const-string/jumbo v10, "Make sure to give correct input"

    invoke-direct {v9, v10}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Verify and migrate credential for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "credential"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const-string/jumbo v10, "credentialType"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string/jumbo v10, "userId"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v9, v11

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v7, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p3}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$2;

    invoke-direct {v10, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    if-nez v1, :cond_cc

    const-string/jumbo v9, "sp migration - Can\'t find engine info"

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :goto_74
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v3

    move-object v2, v3

    move-object v4, v5

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$30;

    invoke-direct {v10, p3, v3, v4}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a4

    const-string/jumbo v9, "Unexpected failure while perform generational shift"

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_a4
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Result of sp verified migration  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v7

    :cond_cc
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$24;

    invoke-direct {v10, p3, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$24;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_e9

    const-string/jumbo v9, "sp migration - Failed in verification due to invalid credential"

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_74

    :cond_e9
    move-object v6, v5

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, p3, v8}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_102

    const-string/jumbo v9, "sp migration - Failed to unlock keystore. No option but to reset"

    invoke-static {v9}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9, p3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :cond_102
    invoke-direct {p0, v5, p1, p2, p3}, Lcom/android/server/LockSettingsService;->migrateToSyntheticPasswordBasedInternal([BLjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    goto/16 :goto_74
.end method

.method private migrateToSyntheticPasswordBasedInternal([BLjava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 21

    sget-object v11, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sp migration - Detected credential quaility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$25;

    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$25;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_53

    const-string/jumbo v2, "sp migration - Failed to set reset token"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4f} :catch_7c
    .catchall {:try_start_6 .. :try_end_4f} :catchall_af

    :cond_4f
    :goto_4f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_52
    return-object v11

    :cond_53
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_87

    :try_start_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I)V

    :goto_65
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v15
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6a} :catch_7c
    .catchall {:try_start_58 .. :try_end_6a} :catchall_af

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v8, p4

    :try_start_76
    invoke-direct/range {v2 .. v9}, Lcom/android/server/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_b4

    move-result-object v11

    :try_start_7a
    monitor-exit v15
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7b} :catch_7c
    .catchall {:try_start_7a .. :try_end_7b} :catchall_af

    goto :goto_4f

    :catch_7c
    move-exception v10

    :try_start_7d
    const-string/jumbo v2, "Unexpected exception while perform sp migration"

    invoke-static {v2, v10}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_af

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :cond_87
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4f

    :try_start_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    move/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    :cond_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v3, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ae} :catch_7c
    .catchall {:try_start_8c .. :try_end_ae} :catchall_af

    goto :goto_65

    :catchall_af
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_b4
    move-exception v2

    :try_start_b5
    monitor-exit v15

    throw v2
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b7} :catch_7c
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_af
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .registers 6

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_19

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics;-><init>()V

    :goto_e
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$28;

    invoke-direct {v2, p2, p0, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$28;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_19
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    goto :goto_e
.end method

.method private notifyPasswordChanged(I)V
    .registers 6

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$15;

    invoke-direct {v3, p1, p0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSyntheticPasswordDeserted(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 6

    if-nez p1, :cond_1d

    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SP deserted - Unexpected condition while desert sp with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$18;

    invoke-direct {v1, p2, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$18;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2f
    return-void
.end method

.method private onSyntheticPasswordInitialized(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 6

    if-nez p1, :cond_1d

    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SP Initialized - Unexpected condition after sp initilization with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$19;

    invoke-direct {v1, p2, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$19;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2f
    return-void
.end method

.method private onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$35;

    invoke-direct {v1, p2, p4, p1, p3}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$35;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_12
    return-void
.end method

.method private onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$20;

    invoke-direct {v2, p2, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-string/jumbo v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP Verified - Unexpected condition after sp verification with user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private prepareLegacyResetRequest(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$6;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$6;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 7

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_40} :catch_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_40} :catch_41
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to remove keystore profile key for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method private removeUser(IZ)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_2c

    :cond_1a
    :goto_1a
    if-nez p2, :cond_28

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    :cond_2b
    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v3, "SHA-512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v3, "Android FBE credential hash"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v3

    return-object v3

    :catch_27
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    return-void
.end method

.method private setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set credential for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "credential"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string/jumbo v5, "credentialType"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "savedCredential"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object p3, v4, v5

    const-string/jumbo v5, "userId"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static/range {p4 .. p4}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v4

    if-eqz v4, :cond_62

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$VirtualLock;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_62
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const/16 p3, 0x0

    :cond_6a
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/16 p1, 0x0

    :cond_72
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    const-string/jumbo v4, "Check accessor - UID : %d, PID : %d, WHO : %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LockSettingsService;->getProcessName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const-string/jumbo v5, "Check requisites - Given : %s, Saved : %s, Unified : %s, Type : %d, User : %d"

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    const-string/jumbo v4, "Empty"

    :goto_b7
    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static/range {p3 .. p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    const-string/jumbo v4, "Empty"

    :goto_c3
    const/4 v7, 0x1

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_11d

    const-string/jumbo v4, "Yes"

    :goto_d3
    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v6, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isLegacyResetRequested(I)Z

    move-result v4

    if-eqz v4, :cond_127

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->prepareLegacyResetRequest(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setLockCredentialWithLegacyToken(Ljava/lang/String;II)Z

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->finalizeLegacyResetRequest(I)V

    if-eqz v20, :cond_121

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_115
    const-string/jumbo v4, "Hidden"

    goto :goto_b7

    :cond_119
    const-string/jumbo v4, "Hidden"

    goto :goto_c3

    :cond_11d
    const-string/jumbo v4, "No"

    goto :goto_d3

    :cond_121
    const-string/jumbo v4, "Continue to set credential..."

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_127
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isSecureFolderUser(I)Z

    move-result v4

    if-eqz v4, :cond_15a

    const-string/jumbo v4, "User %d is identified as secure folder user"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->setSecureFolderLockCredential(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_159

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_159
    return-void

    :cond_15a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_15f
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_171

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordRewrapped(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_16f
    .catchall {:try_start_15f .. :try_end_16f} :catchall_1bf

    monitor-exit v5

    return-void

    :cond_171
    monitor-exit v5

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1c2

    if-eqz p1, :cond_182

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "CredentialType is none, but credential is non-null."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_182
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move/from16 v0, p4

    invoke-interface {v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/android/server/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/LockSettingsStorage$CredentialHash;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/server/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    return-void

    :catchall_1bf
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1c2
    if-nez p1, :cond_1d9

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Null credential with mismatched credential type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->dumpLocksettings()V

    new-instance v4, Landroid/os/RemoteException;

    const-string/jumbo v5, "Null credential with mismatched credential type"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/server/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_238

    if-nez p3, :cond_1f7

    :try_start_1ef
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_1f6
    .catch Ljava/io/FileNotFoundException; {:try_start_1ef .. :try_end_1f6} :catch_22d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/security/InvalidKeyException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/security/KeyStoreException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/security/cert/CertificateException; {:try_start_1ef .. :try_end_1f6} :catch_220
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f6} :catch_220

    move-result-object p3

    :cond_1f7
    :goto_1f7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_1fc
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_24a

    iget-object v4, v15, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    iget v6, v15, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v6, v2}, Lcom/android/server/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v12

    invoke-direct/range {p0 .. p4}, Lcom/android/server/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    :try_end_21e
    .catchall {:try_start_1fc .. :try_end_21e} :catchall_2b2

    monitor-exit v5

    return-void

    :catch_220
    move-exception v17

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Failed to decrypt child profile key"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f7

    :catch_22d
    move-exception v16

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Child profile key not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :cond_238
    iget-object v4, v15, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v4, :cond_1f7

    if-eqz p3, :cond_247

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Saved credential provided, but none stored"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_247
    const/16 p3, 0x0

    goto :goto_1f7

    :cond_24a
    monitor-exit v5

    iget-object v4, v15, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v18

    if-eqz v18, :cond_2b5

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/LockSettingsStorage$CredentialHash;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p4

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v10, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/server/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    return-void

    :catchall_2b2
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2b5
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Failed to enroll."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->dumpLocksettings()V

    new-instance v5, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to enroll "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_2e3

    const-string/jumbo v4, "password"

    :goto_2d7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2e3
    const-string/jumbo v4, "pattern"

    goto :goto_2d7
.end method

.method private setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v8

    if-eqz p1, :cond_58

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_26
    const-string/jumbo v0, "sp-handle"

    invoke-virtual {p0, v0, v8, v9, p4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-direct {p0, p4, v7}, Lcom/android/server/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    return-wide v8

    :cond_30
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p3}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-virtual {p3}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_26

    :cond_58
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_26
.end method

.method private setLockCredentialWithLegacyToken(Ljava/lang/String;II)Z
    .registers 24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set lock credential with legacy token for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->hasLegacyToken(I)Z

    move-result v3

    if-eqz v3, :cond_15b

    const/16 v16, 0x0

    const/4 v13, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SP adaptation required for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    sget-object v18, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$11;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$11;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v17, v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    const-string/jumbo v3, "Failed due to invalid token"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_71
    :goto_71
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Result of SP adaptation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    if-nez v14, :cond_15b

    const/4 v3, 0x0

    return v3

    :cond_9b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$26;

    move/from16 v0, p3

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$26;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v15, v13

    invoke-static {v13}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    const-string/jumbo v3, "Failed to reset password due to invaild token"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_71

    :cond_c1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$27;

    move/from16 v0, p3

    invoke-direct {v4, v0, v13}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$27;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e8

    const-string/jumbo v3, "Failed to set reset password"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_71

    :cond_e8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$12;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$12;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :try_start_107
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v10, v11, v1}, Lcom/android/server/LockSettingsService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10e} :catch_11d

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v3

    if-nez v3, :cond_123

    const-string/jumbo v3, "Failed to verify with reset token"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_71

    :catch_11d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_71

    :cond_123
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$31;

    move/from16 v0, p3

    invoke-direct {v4, v0, v12, v13}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$31;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$21;

    move/from16 v0, p3

    invoke-direct {v4, v0, v13}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$21;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_71

    :cond_15b
    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$13;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$13;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-nez v3, :cond_19e

    :goto_182
    const-string/jumbo v3, "Result of setting credential with legacy token for user %d : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v4, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v19

    :cond_19e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$14;

    move/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$14;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    const-string/jumbo v3, "Failed due to invalid token"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_182

    :cond_1c1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v9, p3

    :try_start_1c9
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/LockSettingsService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cc} :catch_1ce

    move-result v19

    goto :goto_182

    :catch_1ce
    move-exception v2

    const-string/jumbo v3, "Unexpected failure while set credential with token"

    invoke-static {v3, v2}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_182
.end method

.method private setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BI)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v12, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v12

    :try_start_3
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v9

    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_23

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_c7

    const/4 v2, 0x0

    monitor-exit v12

    return v2

    :cond_23
    :try_start_23
    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_a4

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Untrusted credential reset happened for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move/from16 v0, p6

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    iget-object v5, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v6, 0x0

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    move/from16 v0, p6

    invoke-direct {p0, v0, v2}, Lcom/android/server/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKeystoreLocked(I)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKeystoreLocked(I)Z

    move-result v2

    if-eqz v2, :cond_99

    const-string/jumbo v2, "Failed to unlock keystore"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_99
    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :cond_a4
    if-eqz p1, :cond_a9

    const/4 v2, -0x1

    if-ne p2, v2, :cond_b0

    :cond_a9
    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_b0
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    iget-object v2, v9, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move/from16 v0, p6

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    move/from16 v0, p6

    invoke-virtual {v2, v10, v11, v0}, Lcom/android/server/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V
    :try_end_c4
    .catchall {:try_start_23 .. :try_end_c4} :catchall_c7

    const/4 v2, 0x1

    monitor-exit v12

    return v2

    :catchall_c7
    move-exception v2

    monitor-exit v12

    throw v2
.end method

.method private setSecureFolderLockCredential(Ljava/lang/String;ILjava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set credential for secure folder user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "credential"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string/jumbo v5, "credentialType"

    aput-object v5, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "savedCredential"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object p3, v4, v5

    const-string/jumbo v5, "userId"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :try_start_50
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v5
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_a0
    .catchall {:try_start_50 .. :try_end_53} :catchall_ef

    :try_start_53
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-static {p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_64

    const/4 v4, -0x1

    if-ne p2, v4, :cond_89

    :cond_64
    const-string/jumbo v4, "Seems normal case, skip handling"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_9d

    :cond_6c
    :goto_6c
    :try_start_6c
    monitor-exit v5
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_a0
    .catchall {:try_start_6c .. :try_end_6d} :catchall_ef

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_70
    const-string/jumbo v4, "Result of setting credential for secure folder user %d : %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v1

    :cond_89
    :try_start_89
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string/jumbo v4, "Secure folder has legacy credential"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/LockSettingsService;->doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_9d

    goto :goto_6c

    :catchall_9d
    move-exception v4

    :try_start_9e
    monitor-exit v5

    throw v4
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a0} :catch_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_ef

    :catch_a0
    move-exception v0

    :try_start_a1
    const-string/jumbo v4, "Unexpected exception while set sf credential"

    invoke-static {v4, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_ef

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_70

    :cond_ab
    :try_start_ab
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    const-string/jumbo v4, "Secure folder seems to need sp initialization first"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_6c

    :cond_ba
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_e7

    const-string/jumbo v4, "Secure folder already has sp based credential"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v4

    new-instance v6, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$34;

    invoke-direct {v6, p2, p4, p1}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$34;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6c

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_6c

    :cond_e7
    const-string/jumbo v4, "Secure folder compromised!"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_ab .. :try_end_ed} :catchall_9d

    goto/16 :goto_6c

    :catchall_ef
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_b

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Null response verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    if-nez v0, :cond_3e

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    invoke-static {p2}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-ltz p1, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordPerUserLocked(I)Z

    move-result v4

    return v4

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-string/jumbo v5, "enable-sp"

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1e

    cmp-long v5, v2, v6

    if-nez v5, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    return v4
.end method

.method private shouldMigrateToSyntheticPasswordPerUserLocked(I)Z
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    const-string/jumbo v6, "enable-sp-per-user"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v8, v9, p1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_1c

    move-result-wide v2

    cmp-long v6, v2, v10

    if-eqz v6, :cond_1a

    cmp-long v6, v4, v10

    if-nez v6, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19

    :catch_1c
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get sp enabled flag for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_19
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080500

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x10601bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 12

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x1040ad7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v0, 0x104086d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x104086c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_32

    return-void

    :cond_32
    const/high16 v0, 0x10800000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Verify sp based credential for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "userCredential"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string/jumbo v5, "credentialType"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-string/jumbo v5, "userId"

    const/4 v8, 0x4

    aput-object v5, v4, v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_49

    const/16 p1, 0x0

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_50
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_183

    move-result v4

    if-nez v4, :cond_5d

    const/4 v4, 0x0

    monitor-exit v19

    return-object v4

    :cond_5d
    :try_start_5d
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-object/from16 v8, p1

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v15

    iget-object v0, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v16, v0

    if-nez v16, :cond_7f

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_7d
    .catchall {:try_start_5d .. :try_end_7d} :catchall_183

    monitor-exit v19

    return-object v4

    :cond_7f
    :try_start_7f
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_b9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-wide/from16 v12, p4

    move/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    if-nez v16, :cond_a6

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge with SP failed with null value."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_a4
    .catchall {:try_start_7f .. :try_end_a4} :catchall_183

    monitor-exit v19

    return-object v4

    :cond_a6
    :try_start_a6
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_b9

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge with SP failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_b7
    .catchall {:try_start_a6 .. :try_end_b7} :catchall_183

    monitor-exit v19

    return-object v4

    :cond_b9
    monitor-exit v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_186

    if-eqz p7, :cond_c5

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    :cond_c5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    iget-object v4, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    iget-object v4, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v17

    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unlocking user "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " with secret only, length "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    iget-object v4, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->activateEscrowTokens(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_13d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/trust/TrustManager;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p6

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_13d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/server/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    :cond_146
    :goto_146
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_15c

    iget-object v4, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    iget-object v4, v15, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->destroy()V

    :cond_15c
    const-string/jumbo v4, "Result of verification for user %d : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->doPostVerification(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;I)V

    return-object v16

    :catchall_183
    move-exception v4

    monitor-exit v19

    throw v4

    :cond_186
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_146

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_146

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_146

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_146
.end method

.method private spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set sp based credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "credential"

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "credentialType"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string/jumbo v1, "savedCredential"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const-string/jumbo v1, "userId"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_50
    invoke-virtual {p0, p4}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_53} :catch_92
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/security/InvalidKeyException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/security/KeyStoreException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljavax/crypto/BadPaddingException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/security/cert/CertificateException; {:try_start_50 .. :try_end_53} :catch_81
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_81

    move-result-object p3

    :cond_54
    :goto_54
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v6, v7, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v6, :cond_a3

    invoke-direct {p0, p1, p2, v6, p4}, Lcom/android/server/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, v2, v3, p4}, Lcom/android/server/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    if-eqz p1, :cond_77

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7a

    :cond_77
    invoke-direct {p0, v6, p4}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_7a
    invoke-virtual {v6}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->destroy()V

    :goto_7d
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    return-void

    :catch_81
    move-exception v9

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "Failed to decrypt child profile key"

    invoke-static {v0, v9}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_54

    :catch_92
    move-exception v8

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Child profile key not found"

    invoke-static {v0, v8}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_54

    :cond_a3
    if-eqz v10, :cond_c3

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c3

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Untrusted credential change invoked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/server/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/server/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, v2, v3, p4}, Lcom/android/server/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    goto :goto_7d

    :cond_c3
    const-string/jumbo v1, "LockSettingsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spBasedSetLockCredentialInternalLocked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v10, :cond_e3

    const-string/jumbo v0, "rate limit exceeded"

    :goto_d7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e3
    const-string/jumbo v0, "failed"

    goto :goto_d7
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    return-void

    :cond_b
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_18

    return-void

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Synchronize challenge along with user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const-string/jumbo v6, "Feasible for profiles(%d)? %b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_57
    if-ge v0, v5, :cond_c3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_6f

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_72

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_72
    if-eqz v1, :cond_78

    invoke-virtual {p0, v2, v9}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto :goto_6f

    :cond_78
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v6

    if-eqz v6, :cond_94

    const-string/jumbo v6, "LockSettingsService"

    const-string/jumbo v7, "sync challenge - Managed profile %d has legacy credential"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_94
    if-eqz p2, :cond_b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v6, v2}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    :goto_ad
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, v2}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_6f

    :cond_b6
    const-string/jumbo v6, "LockSettingsService"

    const-string/jumbo v7, "clear tied profile challenges, but no password supplied."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9, v10, v9, v2}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_ad

    :cond_c3
    return-void
.end method

.method private unlockChildProfile(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v8

    instance-of v0, v8, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1e
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 14

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v7

    if-eqz v7, :cond_7

    return-void

    :cond_7
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v3, p0, v2}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_12
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v7, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_77

    const-wide/16 v8, 0xf

    :try_start_19
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_7d

    :goto_1e
    :try_start_1e
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_76

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_34

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v7

    if-eqz v7, :cond_34

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->unlockChildProfile(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_6b} :catch_6c

    goto :goto_34

    :catch_6c
    move-exception v0

    const-string/jumbo v7, "LockSettingsService"

    const-string/jumbo v8, "Failed to unlock child profile"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_76
    return-void

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :catch_7d
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1e
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_12

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_12
    if-eqz p2, :cond_1a

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1a
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_1d
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_b2

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_98

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v13

    :goto_35
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v13, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_af

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a5

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    :goto_51
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user with fake token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v11}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    if-nez p4, :cond_b2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v13

    goto :goto_35

    :cond_a5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    goto :goto_51

    :cond_af
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    invoke-virtual {v12}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v15

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_18e

    if-eqz p7, :cond_db

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    :cond_db
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with token length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_143

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/trust/TrustManager;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_143
    if-eqz v15, :cond_155

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_154
    :goto_154
    return-object v14

    :cond_155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_15a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_189

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v6, v2}, Lcom/android/server/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/server/LockSettingsService;->activateEscrowTokens(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    if-eqz v10, :cond_182

    invoke-virtual {v10}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    :cond_182
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    :try_end_189
    .catchall {:try_start_15a .. :try_end_189} :catchall_18b

    :cond_189
    monitor-exit v5

    goto :goto_154

    :catchall_18b
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_18e
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_154

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    goto :goto_154
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->ensureCallerSystemUid()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add escrow token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "token"

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "userId"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$VirtualLock;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0

    :cond_43
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v7

    :try_start_46
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, v0, v1, v4, p2}, Lcom/android/server/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6e

    invoke-direct {p0, v6, p2}, Lcom/android/server/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_6e
    :goto_6e
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p2}, Lcom/android/server/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-nez v0, :cond_9e

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_46 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_8b
    :try_start_8b
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    goto :goto_6e

    :cond_9e
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v8

    if-eqz v6, :cond_ab

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, v8, v9, v6, p2}, Lcom/android/server/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    :try_end_ab
    .catchall {:try_start_8b .. :try_end_ab} :catchall_88

    :cond_ab
    monitor-exit v7

    return-wide v8
.end method

.method public changeToken([BJ[BJI)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Change token for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "newToken"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string/jumbo v5, "newHandle"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string/jumbo v5, "oldToken"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object p4, v4, v5

    const-string/jumbo v5, "oldHandle"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const-string/jumbo v5, "userId"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    const/4 v12, 0x0

    :try_start_5c
    iget-object v13, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v13
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_75

    :try_start_5f
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/android/server/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v4

    if-nez v4, :cond_94

    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Escrow token is disabled on the current user"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_72
    .catchall {:try_start_5f .. :try_end_72} :catchall_72

    :catchall_72
    move-exception v4

    :try_start_73
    monitor-exit v13

    throw v4
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_75} :catch_75

    :catch_75
    move-exception v11

    const-string/jumbo v4, "Unexpected exception while change token"

    invoke-static {v4, v11}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_7c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Final result of change token : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v12

    :cond_94
    :try_start_94
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-wide/from16 v6, p5

    move-object/from16 v8, p4

    move/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v10

    if-eqz v10, :cond_aa

    iget-object v4, v10, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-nez v4, :cond_b2

    :cond_aa
    const-string/jumbo v4, "Failed due to invalid token"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_72

    :cond_b0
    :goto_b0
    :try_start_b0
    monitor-exit v13
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b1} :catch_75

    goto :goto_7c

    :cond_b2
    :try_start_b2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    iget-object v5, v10, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-wide/from16 v0, p2

    move/from16 v2, p7

    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/android/server/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v12

    if-nez v12, :cond_c6

    const-string/jumbo v4, "Failed in new token activation"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_c6
    if-eqz v12, :cond_d4

    move-wide/from16 v0, p5

    move/from16 v2, p7

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b0

    :cond_d4
    const-string/jumbo v4, "Failed in old token elimination"

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_b2 .. :try_end_da} :catchall_72

    goto :goto_b0
.end method

.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_28

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_28
    return v1
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_28

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_28
    return v1
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v3, 0x1

    return v3

    :cond_15
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_28

    array-length v3, v2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashSec(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_28
    return v1
.end method

.method public checkBackupPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v3, -0x1

    if-eqz v1, :cond_16

    :try_start_12
    invoke-interface {v1, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_25

    move-result v3

    :cond_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "result"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_21
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_49

    :goto_24
    return-void

    :catch_25
    move-exception v2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput p1, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    iput-object p2, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    const-string/jumbo v5, "LockSettingsService"

    const-string/jumbo v6, "failed checkRemoteLockPassword callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :catch_49
    move-exception v2

    const-string/jumbo v5, "LockSettingsService"

    const-string/jumbo v6, "failed sendResult callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_24
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkPrivateModeBackupPin(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockBackupkPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x1

    return v2

    :cond_13
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePassword(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPasswordHash(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x1

    return v2

    :cond_13
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePattern(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPatternHash(I)[B

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v2, 0x1

    return v2

    :cond_15
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkPrivateModePin(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readPrivateModeLockPinHash(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x1

    return v2

    :cond_13
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public checkRecoveryPassword(Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readRecoveryPasswordHash(I)[B

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public checkVoldPassword(I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v5, :cond_7

    return v7

    :cond_7
    iput-boolean v7, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mInjector:Lcom/android/server/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_16
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_23

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_28

    return v7

    :catchall_23
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_28
    :try_start_28
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_46

    :cond_38
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, p1, v6}, Lcom/android/server/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_45

    move-result v5

    if-nez v5, :cond_46

    return v8

    :catch_45
    move-exception v0

    :cond_46
    :try_start_46
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, p1, v6}, Lcom/android/server/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_5b

    move-result v5

    if-nez v5, :cond_5c

    return v8

    :catch_5b
    move-exception v0

    :cond_5c
    return v7
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    const-string/jumbo v4, "Current lock settings service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "SP Enabled = %b"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "DO Enabled = %b"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_4b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "        SP Enabled = %b"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_8b
    const-string/jumbo v4, "        SP Handle = %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_c3

    monitor-exit v5

    :try_start_a4
    const-string/jumbo v4, "        SID = %x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_c0} :catch_c7

    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :catchall_c3
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_c6
    return-void

    :catch_c7
    move-exception v0

    goto :goto_c0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return p2

    :cond_f
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_e

    :cond_20
    const/4 p2, 0x1

    goto :goto_e
.end method

.method public getCarrierLockPlusMode(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1f

    move-result v2

    monitor-exit v4

    :cond_15
    :goto_15
    return v2

    :cond_16
    monitor-exit v4

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x3

    goto :goto_15

    :catchall_1f
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_22
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x2

    goto :goto_15

    :cond_2c
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    goto :goto_15
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xc

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v7, p1}, Lcom/android/server/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v6

    if-nez v6, :cond_14

    new-instance v7, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "Child profile lock file not found"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_14
    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v7, v6

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile_key_name_decrypt_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    const-string/jumbo v7, "AES/GCM/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_32

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_32

    monitor-exit p0

    return-object v1

    :cond_27
    :try_start_27
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v3

    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return-wide p2

    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_e
.end method

.method public getSecureMode(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/SyntheticPasswordManager;->getSecureMode(JI)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_26

    move-result v2

    :cond_14
    monitor-exit v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    const/4 v2, 0x1

    :cond_25
    return v2

    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit v1

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "1"
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_20

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1c
    :try_start_1c
    const-string/jumbo v2, "0"
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_18

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_25
    const-string/jumbo v2, "legacy_lock_pattern_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo p1, "lock_pattern_autolock"

    :cond_31
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStrongAuthForUser(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v3

    if-eqz v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v4, v0, v1, p1}, Lcom/android/server/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_3e

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    :goto_26
    monitor-exit v3

    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_26

    :cond_2a
    monitor-exit v3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v2

    :cond_3d
    return v2

    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_41
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v2

    return v2
.end method

.method public havePattern(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v4, v0, v1, p1}, Lcom/android/server/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_2e

    move-result v4

    if-ne v4, v2, :cond_18

    :goto_16
    monitor-exit v3

    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_16

    :cond_1a
    monitor-exit v3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->hasLegacyCredential(I)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v2

    :cond_2d
    return v2

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_31
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v2

    return v2
.end method

.method public havePrivateModeBackupPin(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePattern(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePrivateModePin(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePrivateModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveRecoveryPassword(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasRecoveryPassword(I)Z

    move-result v0

    return v0
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->existsHandle(JI)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_LockSettingsService_87485(Landroid/app/admin/PasswordMetrics;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_LockSettingsService_88178(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->enforceShell()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_7
    new-instance v0, Lcom/android/server/LockSettingsShellCommand;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsShellCommand;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "registerRemoteLockCallback!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget v3, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v3, p1, :cond_3c

    const/4 v2, -0x1

    if-eqz p2, :cond_28

    :try_start_22
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_3d

    move-result v2

    :cond_28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_33
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_4b

    :goto_38
    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    :cond_3c
    return-void

    :catch_3d
    move-exception v1

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :catch_4b
    move-exception v1

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "failed sendResult callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_38
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_1b

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Cannot remove password handle"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_36

    monitor-exit v1

    return v4

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->removePendingToken(JI)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_36

    move-result v0

    if-eqz v0, :cond_25

    monitor-exit v1

    return v5

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_36

    monitor-exit v1

    return v5

    :cond_34
    monitor-exit v1

    return v4

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestRemoteLockInfo(I)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v13, 0x0

    :goto_4
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v13, v0, :cond_1a2

    move v15, v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    const/4 v7, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "locked"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v14

    if-eqz v14, :cond_190

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "message"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "phonenumber"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "enableemergencycall"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "clientname"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "allowfailcount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v6, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "locktime"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v16

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "permanentblockcount"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    new-instance v20, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v8, :cond_190

    :try_start_18d
    invoke-interface {v8, v10}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_190} :catch_194

    :cond_190
    :goto_190
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :catch_194
    move-exception v11

    const-string/jumbo v20, "LockSettingsService"

    const-string/jumbo v21, "failed changeRemoteLockState callback!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_190

    :cond_1a2
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v9

    if-eqz v9, :cond_a

    return-void

    :cond_a
    const/4 v3, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v9, -0x1

    if-ne v3, v9, :cond_54

    :try_start_49
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1a

    :cond_54
    const-string/jumbo v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "More than one managed profile, uid1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uid2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/security/InvalidKeyException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/security/KeyStoreException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/security/cert/CertificateException; {:try_start_49 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_7b} :catch_7c

    goto :goto_1a

    :catch_7c
    move-exception v1

    const-string/jumbo v9, "LockSettingsService"

    const-string/jumbo v10, "Failed to decrypt child profile key"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_87
    :try_start_87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_94
    if-ge v10, v12, :cond_b2

    aget v6, v11, v10

    sget-object v13, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/4 v9, 0x0

    array-length v14, v13

    :goto_9c
    if-ge v9, v14, :cond_ae

    aget v8, v13, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_ab
    .catchall {:try_start_87 .. :try_end_ab} :catchall_bd

    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    :cond_ae
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_94

    :cond_b2
    const/4 v9, -0x1

    if-eq v3, v9, :cond_bc

    if-eqz v2, :cond_bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_bc
    return-void

    :catchall_bd
    move-exception v9

    const/4 v10, -0x1

    if-eq v3, v10, :cond_c8

    if-eqz v2, :cond_c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_c8
    throw v9
.end method

.method public sendLockTypeChangedInfo(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->sendLockTypeChangedInfo(Z)V

    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPinHash([BI)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    if-eqz p2, :cond_c

    const-string/jumbo v0, "1"

    :goto_8
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v0, "0"

    goto :goto_8
.end method

.method public setCarrierLockPlusEnabled(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BI)V

    return-void
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    return-void
.end method

.method public setLockCredential(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p4, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->ensureCallerSystemUid()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set lock credential with token for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "credential"

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    const-string/jumbo v2, "type"

    aput-object v2, v1, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "tokenHandle"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "token"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object p5, v1, v2

    const-string/jumbo v2, "userId"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-static {p6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mVirtualLock:Lcom/android/server/LockSettingsService$VirtualLock;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/LockSettingsService$VirtualLock;->setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z

    move-result v1

    return v1

    :cond_6e
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_71
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v1, p6}, Lcom/android/server/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-nez v1, :cond_85

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Escrow token is disabled on the current user"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_85
    :try_start_85
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LockSettingsService;->setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BI)Z
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_82

    move-result v0

    monitor-exit v2

    if-eqz v0, :cond_98

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_91
    invoke-virtual {p0, p6, v2, v3}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_b1

    monitor-exit v1

    invoke-direct {p0, p6}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V

    :cond_98
    const-string/jumbo v1, "Result of setting credential with token for user %d : %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v0

    :catchall_b1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    return-void
.end method

.method public setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public setLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeRecoveryPasswordHash([BI)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "setLong ## sendLockTypeChangedInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService;->sendLockTypeChangedInfo(Z)V

    :cond_20
    return-void
.end method

.method public setPrivateModeLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLocBackupkPinHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPassword(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPasswordHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPattern(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPatternHash([BI)V

    return-void
.end method

.method public setPrivateModeLockPin(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePrivateModeLockPinHash([BI)V

    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v4, v0

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v6, v0

    if-eqz v16, :cond_178

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "message"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "phonenumber"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "enableemergencycall"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "clientname"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "allowfailcount"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locktime"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "permanentblockcount"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :goto_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v8, :cond_15e

    :try_start_159
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_15e} :catch_19e

    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v8, :cond_177

    :try_start_172
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_177} :catch_1ac

    :cond_177
    :goto_177
    return-void

    :cond_178
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "locked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    goto :goto_147

    :catch_19e
    move-exception v10

    const-string/jumbo v18, "LockSettingsService"

    const-string/jumbo v19, "failed changeRemoteLockState callback!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15e

    :catch_1ac
    move-exception v10

    const-string/jumbo v18, "LockSettingsService"

    const-string/jumbo v19, "failed changeRemoteLockState callback!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_177
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_68

    const-string/jumbo v0, "Enable"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " separate challenge for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "managedUserPassword"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_56
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    if-eqz p2, :cond_6c

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_70

    :goto_66
    monitor-exit v1

    return-void

    :cond_68
    const-string/jumbo v0, "Disable"

    goto :goto_11

    :cond_6c
    :try_start_6c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_66

    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_d

    :goto_6
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .registers 15

    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tie lock if necessary for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "managedUserId"

    aput-object v2, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string/jumbo v2, "managedUserPassword"

    aput-object v2, v0, v5

    const/4 v2, 0x3

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_42

    return-void

    :cond_42
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    :cond_54
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v10}, Lcom/android/server/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_63

    return-void

    :cond_63
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6a} :catch_70

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_7b

    return-void

    :catch_70
    move-exception v8

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Failed to talk to GateKeeper service"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7b
    new-array v11, v4, [B

    :try_start_7d
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v11

    invoke-static {v11}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v2, 0x50000

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_b2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7d .. :try_end_b2} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_b2} :catch_b3

    :cond_b2
    :goto_b2
    return-void

    :catch_b3
    move-exception v9

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Fail to tie managed profile"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2
.end method

.method protected tieProfileLockToParent(ILjava/lang/String;)V
    .registers 21

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    :try_start_8
    const-string/jumbo v12, "AES"

    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    const-string/jumbo v12, "AndroidKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_26} :catch_141
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_26} :catch_141

    :try_start_26
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_decrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v8

    check-cast v8, Ljavax/crypto/SecretKey;

    const-string/jumbo v12, "AES/GCM/NoPadding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_dd
    .catchall {:try_start_26 .. :try_end_dd} :catchall_126

    move-result-object v5

    :try_start_de
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/security/cert/CertificateException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljavax/crypto/BadPaddingException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljava/security/KeyStoreException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_de .. :try_end_f7} :catch_141
    .catch Ljava/security/InvalidKeyException; {:try_start_de .. :try_end_f7} :catch_141

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_fc
    array-length v12, v5

    const/16 v13, 0xc

    if-eq v12, v13, :cond_14b

    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid iv length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_11c} :catch_11c

    :catch_11c
    move-exception v2

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to concatenate byte arrays"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :catchall_126
    move-exception v12

    :try_start_127
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "profile_key_name_encrypt_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw v12
    :try_end_141
    .catch Ljava/security/cert/CertificateException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljavax/crypto/BadPaddingException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljava/security/KeyStoreException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_127 .. :try_end_141} :catch_141
    .catch Ljava/security/InvalidKeyException; {:try_start_127 .. :try_end_141} :catch_141

    :catch_141
    move-exception v3

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to encrypt key"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_14b
    :try_start_14b
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_151} :catch_11c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v7

    :try_start_7
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v6

    iget-object v0, v6, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-nez v0, :cond_37

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Invalid escrow token supplied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_18

    monitor-exit v7

    return-void

    :cond_37
    monitor-exit v7

    iget-object v0, v6, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p4, v8, v0}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hasn\'t been registered!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public userPresent(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "User id must be managed profile with unified lock"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_3b

    return-object v19

    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/server/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_50
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/InvalidKeyException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/KeyStoreException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/cert/CertificateException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_50} :catch_52

    move-result-object v2

    return-object v2

    :catch_52
    move-exception v18

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to decrypt child profile key"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "Unable to get tied profile token"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Verify token for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "token"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "tokenHandle"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "userId"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :try_start_44
    iget-object v12, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    monitor-enter v12
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_5d

    :try_start_47
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/server/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-nez v2, :cond_80

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v2

    :goto_5b
    :try_start_5b
    monitor-exit v12

    throw v2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception v9

    const-string/jumbo v2, "Unexpected exception while verify token"

    invoke-static {v2, v9}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result of token verification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v10

    :cond_80
    :try_start_80
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSpManager:Lcom/android/server/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p2

    move-object v6, p1

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v8

    if-eqz v8, :cond_95

    iget-object v2, v8, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_9d

    :cond_95
    const-string/jumbo v2, "Failed due to invalid escrow token supplied"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_80 .. :try_end_9b} :catchall_5a

    :goto_9b
    :try_start_9b
    monitor-exit v12
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9c} :catch_5d

    goto :goto_64

    :cond_9d
    :try_start_9d
    new-instance v11, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_5a

    :try_start_a2
    iget-object v2, v8, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_ad

    move-object v10, v11

    goto :goto_9b

    :catchall_ad
    move-exception v2

    move-object v10, v11

    goto :goto_5b
.end method
