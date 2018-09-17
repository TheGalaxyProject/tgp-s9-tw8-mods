.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-knox-SemPersonaStateSwitchesValues:[I


# instance fields
.field private final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

.field private final ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

.field private final ANDROID_NAME:Ljava/lang/String;

.field private final CMAIL_NAME:Ljava/lang/String;

.field private final EFOTA_NAME:Ljava/lang/String;

.field private final EMAIL_COMPOSER_NAME:Ljava/lang/String;

.field private final EMAIL_NAME:Ljava/lang/String;

.field private final EMAIL_PROVIDER_NAME:Ljava/lang/String;

.field private final EMAIL_SYNC_NAME:Ljava/lang/String;

.field private final EMAIL_UI_NAME:Ljava/lang/String;

.field private final INCALLUI_NAME:Ljava/lang/String;

.field private final KNOX_DEBUG:Z

.field private final KNOX_EXPORT_DATA:I

.field private final KNOX_IMPORT_DATA:I

.field private final KNOX_SANITIZING:I

.field private final KNOX_SANITIZING_LOCKSCREEN:I

.field private final KNOX_SWITCHER_NAME:Ljava/lang/String;

.field private final MESSAGING_NAME:Ljava/lang/String;

.field private final MMS_NAME:Ljava/lang/String;

.field private final PHONE_NAME:Ljava/lang/String;

.field private final SERVER_TELECOM_NAME:Ljava/lang/String;

.field private final SETTINGSRECEIVER_NAME:Ljava/lang/String;

.field private final SETTINGS_NAME:Ljava/lang/String;

.field private final SYSTEMUI_NAME:Ljava/lang/String;

.field private final USERID:Ljava/lang/String;

.field private final VVM_NAME:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContainerStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field private final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContainerKioskMode:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-knox-SemPersonaStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-com-samsung-android-knox-SemPersonaStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-com-samsung-android-knox-SemPersonaStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaState;->values()[Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_98

    :goto_17
    :try_start_17
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_96

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_94

    :goto_29
    :try_start_29
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_92

    :goto_32
    :try_start_32
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_90

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_8e

    :goto_45
    :try_start_45
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_8c

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_8a

    :goto_58
    :try_start_58
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_88

    :goto_61
    :try_start_61
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_86

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_84

    :goto_75
    :try_start_75
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_82

    :goto_7f
    sput-object v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-com-samsung-android-knox-SemPersonaStateSwitchesValues:[I

    return-object v0

    :catch_82
    move-exception v1

    goto :goto_7f

    :catch_84
    move-exception v1

    goto :goto_75

    :catch_86
    move-exception v1

    goto :goto_6b

    :catch_88
    move-exception v1

    goto :goto_61

    :catch_8a
    move-exception v1

    goto :goto_58

    :catch_8c
    move-exception v1

    goto :goto_4f

    :catch_8e
    move-exception v1

    goto :goto_45

    :catch_90
    move-exception v1

    goto :goto_3b

    :catch_92
    move-exception v1

    goto :goto_32

    :catch_94
    move-exception v1

    goto :goto_29

    :catch_96
    move-exception v1

    goto :goto_20

    :catch_98
    move-exception v1

    goto/16 :goto_17
.end method

.method static synthetic -set0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isContainerKioskMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    iput-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    const-string/jumbo v0, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_RCP_POLICY_CHANGED:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ACTION_SECURE_FOLDER_SETUP_COMPLETE:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->USERID:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.email.provider"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.email.sync"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_SYNC_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.email.ui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_UI_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.email.composer"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_COMPOSER_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EMAIL_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MMS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.messaging"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->MESSAGING_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.kddi.android.cmail"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->CMAIL_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.incallui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->INCALLUI_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.server.telecom"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SERVER_TELECOM_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.SettingsReceiver"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGSRECEIVER_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SYSTEMUI_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->SETTINGS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->PHONE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->ANDROID_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.knox.switcher"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SWITCHER_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.vvm"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->VVM_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.wssyncmldm"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->EFOTA_NAME:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING_LOCKSCREEN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_IMPORT_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_EXPORT_DATA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_SANITIZING:I

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$3;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;-><init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->init()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerCallback()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->registerReceivers()V

    return-void
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .registers 15

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v1, "true"

    const-string/jumbo v0, "false"

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_f

    return v10

    :cond_f
    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_a8

    return v9

    :sswitch_14
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    :goto_16
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_54

    :try_start_1e
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setPersonalManager()V

    iget-object v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v7, "persona_policy"

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_87

    if-nez v4, :cond_38

    return v9

    :sswitch_2f
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_16

    :sswitch_32
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_16

    :sswitch_35
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_16

    :cond_38
    :try_start_38
    const-string/jumbo v6, "Notifications"

    invoke-virtual {v4, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    const-string/jumbo v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    :cond_51
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_54} :catch_87

    :cond_54
    :goto_54
    iget-boolean v6, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v6, :cond_7d

    const-string/jumbo v6, "KnoxStateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicy: policyProperty:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " policy value returned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    return v10

    :catch_87
    move-exception v3

    const-string/jumbo v6, "KnoxStateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicy: threw an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    :cond_a6
    return v9

    nop

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_32
        0x4 -> :sswitch_14
        0x10 -> :sswitch_35
    .end sparse-switch
.end method

.method private init()V
    .registers 8

    const-string/jumbo v4, "KnoxStateMonitor"

    const-string/jumbo v5, "initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_20

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_20

    iget v4, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_4a

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_4a
    iget v4, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_5e

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_5e
    iget v4, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_72

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_72
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_96
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20

    :cond_af
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v4, v5}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method private isContainerKioskMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    return v0
.end method

.method private isNotificationSanitizedByDPM(I)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v5, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_1f

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_21

    :cond_1f
    const/4 v2, 0x1

    return v2

    :cond_21
    return v4
.end method

.method private isPersona(I)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method private isPersonaInKioskMode(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private knoxContainerInLockMode(I)Z
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get KnoxInLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v2, 0x0

    return v2

    :cond_2d
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-eqz v0, :cond_41

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v0, v2, :cond_41

    const/4 v1, 0x1

    :cond_41
    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return v1
.end method

.method private knoxContainerInSuperLockMode(I)Z
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get knoxInSuperLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v2, 0x0

    return v2

    :cond_2d
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_60

    const-string/jumbo v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return v0
.end method

.method private notifyContainerStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 8

    const/16 v4, 0x138f

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    if-nez v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    :cond_12
    if-ne p2, v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-getcom-samsung-android-knox-SemPersonaStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e8

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "default state for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_50
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mContainerStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5a
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification state for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is superlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_50

    :pswitch_89
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_ae

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification state for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_50

    :pswitch_b8
    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v1, :cond_dd

    const-string/jumbo v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification state for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_50

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_89
    .end packed-switch
.end method

.method private registerCallback()V
    .registers 1

    return-void
.end method

.method private registerReceivers()V
    .registers 12

    const/4 v10, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaLaunchReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v9, "com.samsung.container.LAUNCH_INFO"

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_4c
    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    :cond_59
    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v7, :cond_ca

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_63
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_63

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->setContainerKioskMode(I)V

    iget-boolean v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v7, :cond_63

    const-string/jumbo v7, "KnoxStateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "add container observer= for userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " No. of users="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_ab} :catch_ac

    goto :goto_63

    :catch_ac
    move-exception v1

    const-string/jumbo v7, "KnoxStateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ca
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonaRemovalStartedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v9, "com.samsung.container.OBSERVER"

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setContainerKioskMode(I)V
    .registers 5

    const/16 v2, 0x139d

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isPersonaInKioskMode(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eq v1, v0, :cond_1e

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/KnoxStateMonitor;->-get1(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    return-void
.end method

.method private setPersonalManager()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_15
    return-void
.end method


# virtual methods
.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.incallui"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_94

    if-nez p1, :cond_94

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_61
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.android.settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.samsung.vvm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    const-string/jumbo v2, "com.wssyncmldm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_94

    return v3

    :cond_92
    move v2, v3

    goto :goto_61

    :cond_94
    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v2, :cond_e5

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    :cond_b1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e5

    if-nez p1, :cond_e5

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d1

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d1

    const-string/jumbo v2, "com.kddi.android.cmail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    :cond_d1
    invoke-direct {p0, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    if-eqz v2, :cond_e5

    iget-boolean v2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->KNOX_DEBUG:Z

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v4, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    return v3

    :cond_e5
    if-eqz p3, :cond_f3

    if-eqz p2, :cond_f3

    const-string/jumbo v2, "com.sec.knox.switcher"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    return v3

    :cond_f3
    return v6
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .registers 12

    const/4 v5, 0x0

    if-eqz p3, :cond_d

    const-string/jumbo v3, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    return v5

    :cond_d
    const-string/jumbo v3, "knox-sanitize-data"

    const/4 v4, 0x4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v1

    const-string/jumbo v3, "knox-sanitize-data-lockscreen"

    const/16 v4, 0x10

    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->getPolicy(ILjava/lang/String;I)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInLockMode(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isNotificationSanitizedByDPM(I)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string/jumbo v3, "KnoxStateMonitor"

    const-string/jumbo v4, "isKnoxNotificationSanitizeNeeded :: isNotificationSanitizedByDPM : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_33
    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    if-nez p4, :cond_3b

    if-nez p5, :cond_80

    :cond_3b
    if-eqz v2, :cond_3f

    if-nez p5, :cond_80

    :cond_3f
    iget-boolean v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-nez v3, :cond_4b

    if-eqz v0, :cond_47

    if-nez p4, :cond_80

    :cond_47
    if-eqz v1, :cond_4b

    if-nez v0, :cond_80

    :cond_4b
    const-string/jumbo v3, "com.samsung.android.email.provider"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "com.samsung.android.email.sync"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "com.samsung.android.email.ui"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "com.samsung.android.email.composer"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "com.android.email"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    :cond_78
    if-nez v0, :cond_80

    if-eqz p5, :cond_82

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_82

    :cond_80
    const/4 v3, 0x1

    return v3

    :cond_82
    return v5
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isQuickConnectEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mIsContainerKioskMode:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->mPersonas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "com.samsung.android.messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "com.kddi.android.cmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    return v0

    :cond_42
    return v1
.end method
