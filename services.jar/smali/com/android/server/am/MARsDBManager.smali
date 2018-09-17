.class public Lcom/android/server/am/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDBManager$DBHandler;,
        Lcom/android/server/am/MARsDBManager$DBThread;,
        Lcom/android/server/am/MARsDBManager$SMDBValue;,
        Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field private static final ADJUST_TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final APP_SIZE_INCREASED:Ljava/lang/String; = "appSizeIncreased"

.field private static final AUTORUN:Ljava/lang/String; = "autoRun"

.field private static final BIGDATA_RESTRICTION:Ljava/lang/String; = "bigdataRestriction"

.field private static final CALLEE:Ljava/lang/String; = "callee"

.field private static final CALLEEPKG:Ljava/lang/String; = "calleepackage"

.field private static final CALLER:Ljava/lang/String; = "caller"

.field private static final CALLERPKG:Ljava/lang/String; = "callerpackage"

.field private static final CURRENT_IMPORTANT_VALUE:Ljava/lang/String; = "currentImportantValue"

.field private static final DATA_TRAFFIC_AMOUNT:Ljava/lang/String; = "dataTrafficAmount"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final FIRST_TRIGGER_TIME:Ljava/lang/String; = "firstTriggerTime"

.field private static final ISAPPOPTTARGET:Ljava/lang/String; = "isAppOptTarget"

.field private static final ISDATACLEARED:Ljava/lang/String; = "isDataCleared"

.field private static final IS_ALLOWED:Ljava/lang/String; = "isAllowed"

.field private static final IS_BLOCKED:Ljava/lang/String; = "isblocked"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_POLICY_ENABLED:Ljava/lang/String; = "isPolicyEnabled"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final KILL_TYPE:Ljava/lang/String; = "killType"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final MAIN_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final MARS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.mars"

.field static final MARS_DB_DELETE_PACKAGES_AS_USER_MSG:I = 0xb

.field static final MARS_DB_DELETE_PACKAGE_MSG:I = 0x9

.field static final MARS_DB_GETPOLICYCONDITION_MSG:I = 0xd

.field static final MARS_DB_INITMANAGEDPACKAGES_MSG:I = 0x1

.field static final MARS_DB_INITSETTING_MSG:I = 0x2

.field static final MARS_DB_INIT_SKT_PACKAGE_MSG:I = 0xc

.field static final MARS_DB_INSERT_PACKAGES_AS_USER_MSG:I = 0xa

.field static final MARS_DB_INSERT_PACKAGE_MSG:I = 0x8

.field static final MARS_DB_SM_CHANGED_MSG:I = 0x7

.field static final MARS_DB_UPDATE_APP_STARTUP_MSG:I = 0xe

.field static final MARS_DB_UPDATE_DATA_CLEARED_MSG:I = 0xf

.field static final MARS_DB_UPDATE_DUAL_APP_LIST_MSG:I = 0x10

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x3

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x4

.field static final MARS_SMART_MGR_DB_CHANGED:I = 0x5

.field static final MARS_SMART_MGR_SETTINGS_DB_CHANGED:I = 0x6

.field private static final NOTIFICATION_UPDATED_COUNT:Ljava/lang/String; = "notificationUpdatedCount"

.field private static final NOTIFIEDCOUNT:Ljava/lang/String; = "notifiedCount"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field private static final PACKAGE_NAME_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field public static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field public static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field public static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_EXCEPTION_AUTORUN_DEFAULT_OFF:I = 0x20000

.field public static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field public static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field public static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field public static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field public static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field private static final READCOUNT:Ljava/lang/String; = "readCount"

.field private static final REPEAT_TRIGGER_TIME:Ljava/lang/String; = "repeatTriggerTime"

.field private static final REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field private static final RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final RESTRICTION_TYPE:Ljava/lang/String; = "restrictionType"

.field static final TAG:Ljava/lang/String; = "MARsDBManager"

.field private static final TARGET_CATEGORY:Ljava/lang/String; = "targetCategory"

.field private static final TARGET_PACKAGE_CONDITION:Ljava/lang/String; = "condition"

.field private static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final TRAFFIC_INTERVAL:Ljava/lang/String; = "trafficInterval"

.field private static final UNUSED_AUTO_FREEZE_TIME:Ljava/lang/String; = "unusedAutoFreezeTime"

.field static final UPDATE_SMDB_COLUMN_AUTORUN:I = 0x8

.field static final UPDATE_SMDB_COLUMN_EXTRAS:I = 0x2

.field static final UPDATE_SMDB_COLUMN_PKGTYPE:I = 0x4

.field static final UPDATE_SMDB_COLUMN_RESETTIME:I = 0x1

.field static final UPDATE_SMDB_COLUMN_USERID:I = 0x10

.field private static final USERID:Ljava/lang/String; = "uid"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field public final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field public final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field public final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field public final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field public final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field public final MARS_SETTINGS_URI:Landroid/net/Uri;

.field MARsDBVersion:Ljava/lang/String;

.field MARsVersion:Ljava/lang/String;

.field public final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public final SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

.field public final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public final SMART_MGR_URI:Landroid/net/Uri;

.field mAppStartUpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field public mDBCreate:Z

.field private mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

.field private mDBUpdated:Z

.field mIsBigDataRestrictionColumnExist:Z

.field private mIsDataClearedColumnExist:Z

.field private mIsUidColumnExist:Z

.field private final mMARsVersion:Ljava/lang/String;

.field private mOldVersion:Z

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mPreviousPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredSmartManagerExcludedAppObserver:Z

.field private mRegisteredSmartManagerObserver:Z

.field private mRegisteredSmartManagerSettingsObserver:Z

.field private final mSMVersion:Ljava/lang/String;

.field mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

.field mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

.field mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

.field private mUpdateResetTimeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field

.field mVersionManager:Lcom/android/server/am/MARsVersionManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MARsDBManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MARsDBManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/MARsDBManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/am/MARsDBManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MARsDBManager;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doQueryDataExistAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/am/MARsDBManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/am/MARsDBManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/am/MARsDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDataClearedPackageFromMARsToSM(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updatePkgToSMDB(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->updatePkgsToSMDB(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MARsDBManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doDelPkgAsUserFromSMDB(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->doDeletePkg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsDBManager;->doInsertPkgAsUserToSMDB(ZLjava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->doInsertPkg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->doInsertPkgsToSMDB(ZLjava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/MARsDBManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doUpdateDualAppToSMDB(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doUpdateUserIdToSMDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/am/MARsDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsVersionManager;Landroid/content/Context;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerObserver:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    const-string/jumbo v1, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm/excluded_app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.appstart/appstart_record"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_Policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const-string/jumbo v1, "content://com.samsung.android.sm.mars/MARs_Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    iput-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    const-string/jumbo v1, "30801"

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mMARsVersion:Ljava/lang/String;

    const-string/jumbo v1, "30801"

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSMVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/MARsDBManager$DBThread;

    const-string/jumbo v1, "MARsDBThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager$DBThread;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager$DBThread;->start()V

    return-void
.end method

.method private checkSmDBVersion()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.mars"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    return-void
.end method

.method private doDelPkgAsUserFromSMDB(I)V
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v3, "uid=?"

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v1, 0x0

    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_2b

    move-result v1

    :goto_1a
    if-gez v1, :cond_25

    const-string/jumbo v4, "MARsDBManager"

    const-string/jumbo v5, "doDeletePkg error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MARsPolicyManager;->updatePackageList(I)V

    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private doDeletePkg(Ljava/lang/String;I)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v4, :cond_2f

    const-string/jumbo v3, "package_name=? AND uid=?"

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    :goto_16
    const/4 v1, 0x0

    :try_start_17
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_37

    move-result v1

    :goto_23
    if-gez v1, :cond_2e

    const-string/jumbo v4, "MARsDBManager"

    const-string/jumbo v5, "doDeletePkg error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void

    :cond_2f
    const-string/jumbo v3, "package_name=?"

    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    goto :goto_16

    :catch_37
    move-exception v0

    const-string/jumbo v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private doInsertPkg(Ljava/lang/String;I)V
    .registers 27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-wide v0, v7, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    move-wide/from16 v22, v0

    sub-long v14, v2, v22

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v12, 0x100f

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v2, :cond_f0

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "uid"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v5, "package_name=? AND uid=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    :goto_3d
    const/4 v9, 0x0

    :try_start_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_13a

    :cond_51
    :goto_51
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_134

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doInsertPkg "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v2, :cond_104

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " userId : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_51

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_51

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doInsertPkg "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "(uid : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " is already exist in DB!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_ed} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ed} :catch_1d6

    const/4 v9, 0x1

    goto/16 :goto_51

    :cond_f0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v5, "package_name=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    goto/16 :goto_3d

    :cond_104
    if-eqz v13, :cond_51

    :try_start_106
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doInsertPkg "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " is already exist in DB!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_51

    :cond_134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    if-eqz v9, :cond_13a

    return-void

    :cond_13a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v12, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17

    if-eqz v17, :cond_1d5

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1d5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v16

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "package_name"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isSMFreezed"

    const-string/jumbo v3, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "resetTime"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "packageType"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v2, :cond_19a

    const-string/jumbo v2, "uid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doInsertPkg "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " uri = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d5
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_1d5} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_1d5} :catch_1d6

    :cond_1d5
    :goto_1d5
    return-void

    :catch_1d6
    move-exception v11

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception with contentResolver : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d5

    :catch_1f6
    move-exception v10

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error getting package info: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d5
.end method

.method private doInsertPkgAsUserToSMDB(ZLjava/util/ArrayList;ZI)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v20, v0

    sget-boolean v20, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v20, :cond_37

    const-string/jumbo v20, "MARsDBManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "doInsertPkgAsUserToSMDB, --- generate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " --onUpgrade = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v4, 0x100f

    move/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    const/16 v15, 0x64

    :try_start_4b
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_53
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_15e

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v9

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v20, "package_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "isSMFreezed"

    const-string/jumbo v21, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "packageType"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b0

    const-string/jumbo v20, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    if-nez v6, :cond_be

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_be
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-eqz v17, :cond_132

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v6, v0, :cond_e9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_116

    :cond_e9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v7, v0, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const/16 v20, 0x64

    move/from16 v0, v20

    if-ne v6, v0, :cond_116

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    :cond_116
    if-eqz p1, :cond_12e

    and-int/lit8 v20, v9, 0x2

    if-eqz v20, :cond_12e

    new-instance v11, Lcom/android/server/am/MARsDBManager$SMDBValue;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v12, v1}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12e
    :goto_12e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_53

    :cond_132
    const-string/jumbo v20, "MARsDBManager"

    const-string/jumbo v21, "Unfortunately error !!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_13b} :catch_13c

    goto :goto_12e

    :catch_13c
    move-exception v3

    const-string/jumbo v20, "MARsDBManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Exception on handling DB : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15e
    return-void
.end method

.method private doInsertPkgsToSMDB(ZLjava/util/ArrayList;Z)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object/from16 v21, v0

    sget-boolean v21, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v21, :cond_37

    const-string/jumbo v21, "MARsDBManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "doInsertPkgsToSMDB, --- generate = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " --onUpgrade = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v4, 0x100f

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    const/16 v15, 0x64

    :try_start_49
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    :goto_51
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_162

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/MARsDBManager;->getAppUserId(Landroid/content/pm/PackageInfo;)I

    move-result v18

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v9

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v21, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "isSMFreezed"

    const-string/jumbo v22, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "packageType"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b4

    const-string/jumbo v21, "uid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    if-nez v6, :cond_c2

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c2
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-eqz v17, :cond_136

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/16 v21, 0x64

    move/from16 v0, v21

    if-eq v6, v0, :cond_ed

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_11a

    :cond_ed
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const/16 v21, 0x64

    move/from16 v0, v21

    if-ne v6, v0, :cond_11a

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    :cond_11a
    if-eqz p1, :cond_132

    and-int/lit8 v21, v9, 0x2

    if-eqz v21, :cond_132

    new-instance v11, Lcom/android/server/am/MARsDBManager$SMDBValue;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v12, v1}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_132
    :goto_132
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_51

    :cond_136
    const-string/jumbo v21, "MARsDBManager"

    const-string/jumbo v22, "Unfortunately error !!!! "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_13f} :catch_140

    goto :goto_132

    :catch_140
    move-exception v3

    const-string/jumbo v21, "MARsDBManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception on handling DB : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_162
    return-void
.end method

.method private doQueryDataExistAsUser(I)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "uid"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v3, "uid=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_37

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    :cond_37
    if-lez v8, :cond_59

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "we will skip to insert packages from userID :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_5f
    .catchall {:try_start_4 .. :try_end_53} :catchall_87

    if-eqz v6, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_58
    return v10

    :cond_59
    if-eqz v6, :cond_5e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5e
    :goto_5e
    return v9

    :catch_5f
    move-exception v7

    :try_start_60
    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception with doQueryDataExistAsUser() : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_87

    if-eqz v6, :cond_5e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    :catchall_87
    move-exception v0

    if-eqz v6, :cond_8d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0
.end method

.method private doUpdateDualAppToSMDB(I)V
    .registers 9

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v1, 0x100f

    invoke-virtual {v5, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_23

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_20

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/MARsDBManager;->doInsertPkg(Ljava/lang/String;I)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method private doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25

    const/4 v2, 0x0

    if-nez p1, :cond_c

    const-string/jumbo v7, "MARsDBManager"

    const-string/jumbo v8, "parameter is error!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_19

    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz p2, :cond_21

    const-string/jumbo v7, "isDefaultFreezed"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz p3, :cond_29

    const-string/jumbo v7, "isSMFreezed"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz p4, :cond_31

    const-string/jumbo v7, "isUserForceStopped"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz p5, :cond_39

    const-string/jumbo v7, "lastUsedTime"

    invoke-virtual {v6, v7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-eqz p6, :cond_43

    const-string/jumbo v7, "versionMgmt"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    if-eqz p7, :cond_4d

    const-string/jumbo v7, "extras"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    if-eqz p8, :cond_57

    const-string/jumbo v7, "resetTime"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    if-eqz p9, :cond_61

    const-string/jumbo v7, "notifiedCount"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    if-eqz p10, :cond_6b

    const-string/jumbo v7, "readCount"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    if-eqz p11, :cond_75

    const-string/jumbo v7, "packageType"

    move-object/from16 v0, p11

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    if-eqz p12, :cond_7f

    const-string/jumbo v7, "autoRun"

    move-object/from16 v0, p12

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    if-eqz p13, :cond_89

    const-string/jumbo v7, "isAppOptTarget"

    move-object/from16 v0, p13

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    if-eqz p14, :cond_97

    iget-boolean v7, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v7, :cond_97

    const-string/jumbo v7, "uid"

    move-object/from16 v0, p14

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v7, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v7, :cond_c8

    const-string/jumbo v3, "package_name=? AND uid=?"

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    const/4 v7, 0x1

    aput-object p14, v4, v7

    :goto_a9
    :try_start_a9
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "MARs-self"

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c6} :catch_d2

    move-result v2

    :goto_c7
    return-void

    :cond_c8
    const-string/jumbo v3, "package_name=?"

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    goto :goto_a9

    :catch_d2
    move-exception v1

    const-string/jumbo v7, "MARsDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception with update() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c7
.end method

.method private doUpdateUserIdToSMDB(Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    if-nez p1, :cond_c

    const-string/jumbo v6, "MARsDBManager"

    const-string/jumbo v7, "parameter is error!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_1d

    iget-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v6, :cond_1d

    const-string/jumbo v6, "uid"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "uid=?"

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "-1"

    const/4 v7, 0x0

    aput-object v6, v3, v7

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "MARs-self"

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_48} :catch_4a

    move-result v1

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const-string/jumbo v6, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception with update() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.method private getAppUserId(Landroid/content/pm/PackageInfo;)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz p1, :cond_14

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_14

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :cond_14
    return v1
.end method

.method private getExcludedAppDBValues()V
    .registers 16

    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    const-string/jumbo v6, "exclude_category"

    const-string/jumbo v7, "exclude_type"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_14
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "package_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_74

    move-result-object v8

    :goto_32
    if-eqz v8, :cond_af

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_3a
    :goto_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "2"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "6"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :catch_74
    move-exception v9

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    :cond_97
    const-string/jumbo v0, "7"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_ac
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_af
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPolicyManager;->setSKTSpeicalPackages(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getManagedPackagesFromDB()Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_16

    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string/jumbo v4, "isAppOptTarget=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v1, :cond_11e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    if-eqz v1, :cond_e8

    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string/jumbo v1, "isSMFreezed"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "extras"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string/jumbo v1, "resetTime"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string/jumbo v1, "packageType"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const-string/jumbo v1, "autoRun"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "isAppOptTarget"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const-string/jumbo v1, "uid"

    const/4 v2, 0x7

    aput-object v1, v3, v2

    const-string/jumbo v1, "isDataCleared"

    const/16 v2, 0x8

    aput-object v1, v3, v2

    :goto_69
    :try_start_69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_189

    move-result-object v16

    :goto_7a
    if-eqz v16, :cond_1cc

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :cond_81
    :goto_81
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1c8

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v1, :cond_1ad

    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    if-eqz v1, :cond_d7

    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_d7
    :goto_d7
    if-eqz v8, :cond_81

    if-eqz v14, :cond_81

    new-instance v6, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_e8
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string/jumbo v1, "isSMFreezed"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "extras"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string/jumbo v1, "resetTime"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string/jumbo v1, "packageType"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const-string/jumbo v1, "autoRun"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "isAppOptTarget"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const-string/jumbo v1, "uid"

    const/4 v2, 0x7

    aput-object v1, v3, v2

    goto/16 :goto_69

    :cond_11e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    if-eqz v1, :cond_15a

    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string/jumbo v1, "isSMFreezed"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "extras"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string/jumbo v1, "resetTime"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string/jumbo v1, "packageType"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const-string/jumbo v1, "autoRun"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "isAppOptTarget"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    const-string/jumbo v1, "isDataCleared"

    const/4 v2, 0x7

    aput-object v1, v3, v2

    goto/16 :goto_69

    :cond_15a
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string/jumbo v1, "isSMFreezed"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string/jumbo v1, "extras"

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string/jumbo v1, "resetTime"

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string/jumbo v1, "packageType"

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const-string/jumbo v1, "autoRun"

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string/jumbo v1, "isAppOptTarget"

    const/4 v2, 0x6

    aput-object v1, v3, v2

    goto/16 :goto_69

    :catch_189
    move-exception v17

    const-string/jumbo v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception with contentResolver : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7a

    :cond_1ad
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    if-eqz v1, :cond_d7

    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_d7

    :cond_1c8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-object v18

    :cond_1cc
    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB no database!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getPackageType(Landroid/content/pm/PackageInfo;)I
    .registers 8

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getAppUserId(Landroid/content/pm/PackageInfo;)I

    move-result v3

    const/4 v0, 0x0

    if-eqz v1, :cond_14

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/MARsDBManager;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v0, 0x1

    :cond_14
    if-eqz v2, :cond_1f

    const-string/jumbo v4, "/data/app"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    :cond_1f
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_32

    :cond_28
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_32

    or-int/lit8 v0, v0, 0x2

    :cond_32
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_44

    :cond_42
    or-int/lit8 v0, v0, 0x4

    :cond_44
    if-eqz v1, :cond_4e

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    or-int/lit8 v0, v0, 0x8

    :cond_4e
    if-eqz v1, :cond_58

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_58

    or-int/lit8 v0, v0, 0x10

    :cond_58
    if-eqz v1, :cond_62

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_62

    or-int/lit8 v0, v0, 0x20

    :cond_62
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_6a

    or-int/lit8 v0, v0, 0x40

    :cond_6a
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_74

    or-int/lit16 v0, v0, 0x80

    :cond_74
    if-eqz v1, :cond_7f

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_7f

    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    :cond_7f
    return v0
.end method

.method private getPolicyDefaultInfoFromSMToMARs(Z)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isCompareDBVersion()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7b

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    :goto_17
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initPolicyDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_81

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_81

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v4}, Lcom/android/server/am/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    :goto_28
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_87

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v1}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    :goto_39
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8d

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v0}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    :goto_4a
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustRestrictionInternal()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_93

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_93

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    :goto_5b
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v7, v7, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPolicyManager;->setFakeTopActivityList(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, p1}, Lcom/android/server/am/MARsPolicyManager;->initInternal(Z)V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->setMARsBigDataSettingsInfo()V

    if-nez p1, :cond_7a

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->cancelAllPolicy()V

    :cond_7a
    return-void

    :cond_7b
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    goto :goto_17

    :cond_81
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getPolicyFromDefaultValue()V

    goto :goto_28

    :cond_87
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    goto :goto_39

    :cond_8d
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    goto :goto_4a

    :cond_93
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    goto :goto_5b

    :cond_99
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getPolicyFromDefaultValue()V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    goto :goto_5b
.end method

.method private getSMVersionFromSM()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "version"

    aput-object v0, v2, v9

    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_2d

    move-result-object v6

    :goto_1a
    if-eqz v6, :cond_4d

    :cond_1c
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    :catch_2d
    move-exception v7

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSMVersionFromSM: Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_4c
    return-object v8

    :cond_4d
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "getSMVersionFromSM error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private getSettingsValueFromDB(Z)V
    .registers 16

    const/4 v13, 0x0

    const-string/jumbo v6, "key"

    const-string/jumbo v7, "value"

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v8, 0x0

    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "value"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_83

    move-result-object v8

    :goto_28
    if-eqz v8, :cond_a9

    :cond_2a
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :try_start_34
    const-string/jumbo v0, "spcm_locking_time"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    :cond_4b
    const-string/jumbo v0, "spcm_switch"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v12, p1}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(IZ)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_62} :catch_63

    goto :goto_2a

    :catch_63
    move-exception v9

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with parseInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catch_83
    move-exception v9

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :cond_a6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a9
    return-void
.end method

.method private initAdjustRestrictionInternal()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "restrictionType"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "isAllowed"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "callee"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "caller"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v0, "matchType"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string/jumbo v0, "action"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :try_start_30
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_7e

    move-result-object v12

    :goto_3f
    if-eqz v12, :cond_9e

    :cond_41
    :goto_41
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :catch_7e
    move-exception v13

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustRestrictionInternal: Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_9a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :goto_9d
    return-object v11

    :cond_9e
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d
.end method

.method private initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "policyNum"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "condition"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "matchType"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "packageName"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :try_start_24
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_6c

    move-result-object v9

    :goto_33
    if-eqz v9, :cond_8c

    :cond_35
    :goto_35
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catch_6c
    move-exception v10

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_88
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_8b
    return-object v11

    :cond_8c
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method

.method private initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "policyNum"

    aput-object v0, v2, v12

    const-string/jumbo v0, "currentImportantValue"

    aput-object v0, v2, v13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_53

    move-result-object v6

    :goto_27
    if-eqz v6, :cond_73

    :cond_29
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v0, v11, v8}, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsVersionManager;II)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catch_53
    move-exception v7

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_6f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_72
    return-object v10

    :cond_73
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method private initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "key"

    aput-object v0, v2, v12

    const-string/jumbo v0, "value"

    aput-object v0, v2, v13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_4b

    move-result-object v6

    :goto_27
    if-eqz v6, :cond_6b

    :cond_29
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v0, v8, v11}, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catch_4b
    move-exception v7

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initMARsSettingsDefinitionInternal : Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_6a
    return-object v10

    :cond_6b
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "initMARsSettingsDefinitionInternal error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method

.method private initManagedPackagesInternal()V
    .registers 8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->checkSmDBVersion()V

    invoke-virtual {p0}, Lcom/android/server/am/MARsDBManager;->checkUidColumnExist()V

    invoke-virtual {p0}, Lcom/android/server/am/MARsDBManager;->checkIsDataClearedColumnExist()V

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getManagedSMDBValueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    :cond_2c
    :goto_2c
    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerObserver:Z

    if-nez v2, :cond_4e

    new-instance v2, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerObserver:Z

    :cond_4e
    return-void

    :cond_4f
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7b

    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsSupported()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-direct {p0, v3, v4, v3}, Lcom/android/server/am/MARsDBManager;->doInsertPkgsToSMDB(ZLjava/util/ArrayList;Z)V

    :goto_66
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    iput-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    goto :goto_2c

    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v6, v0, v3}, Lcom/android/server/am/MARsDBManager;->doInsertPkgsToSMDB(ZLjava/util/ArrayList;Z)V

    goto :goto_66

    :cond_7b
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "Packages database not exist, and not created!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private initPolicyDefinitionInternal()Ljava/util/ArrayList;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsDBManager;->checkBigDataRestrictionColumnExist()V

    const/16 v19, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v2, :cond_e7

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "policyNum"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "isPolicyEnabled"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "targetCategory"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "restriction"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "killType"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "firstTriggerTime"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "repeatTriggerTime"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    const-string/jumbo v2, "bigdataRestriction"

    const/4 v3, 0x7

    aput-object v2, v4, v3

    :goto_40
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    :try_start_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5a} :catch_116

    move-result-object v19

    :goto_5b
    if-eqz v19, :cond_139

    :cond_5d
    :goto_5d
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_135

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v2, v9}, Lcom/android/server/am/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v2, :cond_d4

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :cond_d4
    new-instance v6, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v6 .. v18}, Lcom/android/server/am/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5d

    :cond_e7
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "policyNum"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "isPolicyEnabled"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "targetCategory"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "restriction"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "killType"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    const-string/jumbo v2, "firstTriggerTime"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "repeatTriggerTime"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    goto/16 :goto_40

    :catch_116
    move-exception v20

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initPolicyDefinitionInternal: Exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    :cond_135
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :goto_138
    return-object v21

    :cond_139
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_138
.end method

.method private isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_19

    const/4 v1, 0x0

    :goto_6
    array-length v4, v3

    if-ge v1, v4, :cond_19

    aget-object v4, v3, v1

    if-eqz v4, :cond_2e

    aget-object v4, v3, v1

    const-string/jumbo v5, "com.sec.android.EXCEPTION_AUTORUN_DEFAULT_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    :cond_19
    if-eqz v0, :cond_2d

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_31

    const/4 v0, 0x1

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private isCompareDBVersion()Z
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsVersionManager;->getMARsDBVersionFromDefaultValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsVersion:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/MARsDBManager;->getSMDBVersionFromDB()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    if-eqz v4, :cond_3e

    :try_start_15
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsVersion:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_15 .. :try_end_1c} :catch_3f

    move-result-object v1

    :goto_1d
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1d .. :try_end_24} :catch_4a

    move-result-object v0

    :goto_25
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->MARsVersion:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    return v3

    :catch_3f
    move-exception v2

    const-string/jumbo v4, "MARsDBManager"

    const-string/jumbo v5, "isCompareDBVersion(), IndexOutOfBoundsException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_4a
    move-exception v2

    const-string/jumbo v4, "MARsDBManager"

    const-string/jumbo v5, "isCompareDBVersion(), IndexOutOfBoundsException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x8080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    const/4 v2, 0x1

    return v2

    :cond_23
    return v4
.end method

.method private isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z
    .registers 11

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v8

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getAppUserId(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v6, 0x80

    invoke-virtual {v2, v0, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2c

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2c

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    return v8

    :cond_4f
    const/4 v6, 0x1

    return v6
.end method

.method private isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_a

    array-length v1, v0

    if-lez v1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    return v2
.end method

.method private isShowIconPackage(Ljava/lang/String;I)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    return v3
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string/jumbo v2, "com.sec.enterprise.knox.express"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v6

    :cond_12
    if-eqz v1, :cond_1e

    const-string/jumbo v2, "/system/app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v6

    :cond_1e
    if-eqz v1, :cond_2a

    const-string/jumbo v2, "/system/priv-app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v6

    :cond_2a
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_33

    return v5

    :cond_33
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_45

    return v6

    :cond_45
    return v5
.end method

.method private isUsingSMVersion(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "30801"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v3, "isUsingSMVersion(), MARs db version is same"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_16
    const-string/jumbo v2, "30801"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUsingSMVersion(), marsImportantFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", smImportantFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", the value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5c

    return v6

    :cond_5c
    return v5
.end method

.method private updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "calleepackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callerpackage"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isblocked"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "requestTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_28
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x63

    if-le v1, v3, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsDBManager;->doUpdateCompHistory(Z)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit v2

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateDataClearedPackageFromMARsToSM(Ljava/lang/String;IZ)V
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_f

    const-string/jumbo v6, "MARsDBManager"

    const-string/jumbo v7, "updateDataClearedPackageFromMARsToSM parameter error!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    if-eqz v6, :cond_54

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "isDataCleared"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v6, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-eqz v6, :cond_55

    const-string/jumbo v2, "package_name=? AND uid=?"

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    :goto_36
    :try_start_36
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "MARs-self"

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_53} :catch_5d

    move-result v1

    :cond_54
    :goto_54
    return-void

    :cond_55
    const-string/jumbo v2, "package_name=?"

    new-array v3, v9, [Ljava/lang/String;

    aput-object p1, v3, v8

    goto :goto_36

    :catch_5d
    move-exception v0

    const-string/jumbo v6, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception with update() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private updatePkgToSMDB(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .registers 21

    if-eqz p1, :cond_4

    if-nez p3, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v9, 0x0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_e

    :try_start_a
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    :cond_e
    const/4 v8, 0x0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    :cond_17
    const/4 v12, 0x0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_20

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    :cond_20
    const/4 v13, 0x0

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_29

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    :cond_29
    const/4 v15, 0x0

    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_32

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strUserId:Ljava/lang/String;

    :cond_32
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v16

    const-string/jumbo v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private updatePkgsToSMDB(ILjava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePkgsToSMDB : begin --size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    :goto_20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_78

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    const/4 v10, 0x0

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3f

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    :cond_3f
    const/4 v9, 0x0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_48

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    :cond_48
    const/4 v13, 0x0

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_51

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    :cond_51
    const/4 v14, 0x0

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5a

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    :cond_5a
    const/16 v16, 0x0

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_66

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strUserId:Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_66
    if-eqz v3, :cond_75

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/am/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    add-int/lit8 v19, v19, 0x1

    goto :goto_20

    :cond_78
    const-string/jumbo v2, "MARsDBManager"

    const-string/jumbo v4, "updatePkgsToSMDB : end"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    :goto_81
    return-void

    :catch_82
    move-exception v18

    const-string/jumbo v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81
.end method


# virtual methods
.method public checkBigDataRestrictionColumnExist()V
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bigdataRestriction"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1c} :catch_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1c} :catch_22
    .catchall {:try_start_1 .. :try_end_1c} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v7

    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catch_3b
    move-exception v8

    :try_start_3c
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkBigDataRestrictionColumnExist, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_54
    move-exception v0

    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
.end method

.method public checkIsDataClearedColumnExist()V
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "isDataCleared"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1c} :catch_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1c} :catch_22
    .catchall {:try_start_1 .. :try_end_1c} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v7

    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkClearedDataColumnExist-sql, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catch_3b
    move-exception v8

    :try_start_3c
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkClearedDataColumnExist, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_54
    move-exception v0

    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
.end method

.method public checkUidColumnExist()V
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1c} :catch_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1c} :catch_22
    .catchall {:try_start_1 .. :try_end_1c} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v7

    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkUidColumnExist-sql, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catch_3b
    move-exception v8

    :try_start_3c
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "checkUidColumnExist, catch no column exception!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_54

    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_54
    move-exception v0

    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
.end method

.method doUpdateCompHistory(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    if-nez p1, :cond_28

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string/jumbo v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception on handling DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public getMARsPolicyCondition(Z)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "boot"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method getSMDBVersionFromDB()Ljava/lang/String;
    .registers 11

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "getSMDBVersionFromDB!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string/jumbo v3, "key=?"

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v0, "marsversion"

    aput-object v0, v4, v9

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    aput-object v0, v2, v9

    :try_start_27
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_47

    move-result-object v6

    :goto_34
    if-eqz v6, :cond_6e

    :cond_36
    :goto_36
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_36

    :catch_47
    move-exception v7

    const-string/jumbo v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception with contentResolver : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    :cond_6a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_6d
    return-object v8

    :cond_6e
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "getSMDBVersionFromDB error, no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method public initManagedPackages()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initSKTPackagesWhiteList()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    if-nez v1, :cond_31

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    :cond_31
    return-void
.end method

.method public initSettingFromUI()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsSupported()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    if-nez v1, :cond_38

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_38
    return-void
.end method

.method public onSMDBChanged(ZZ)V
    .registers 7

    const/4 v3, 0x7

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "onCreate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDelPkgAsUserMsgToDBHandler(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDelPkgMsgToDBHandler(Ljava/lang/String;I)V
    .registers 7

    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eq v2, p2, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendInsPkgAsUserMsgToDBHandler(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendInsPkgMsgToDBHandler(Ljava/lang/String;I)V
    .registers 7

    iget-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsUidColumnExist:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eq v2, p2, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterContentObserver()V
    .registers 4

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerObserver:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerObserver:Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerObserver:Z

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_24
    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    const-string/jumbo v1, "MARsDBManager"

    const-string/jumbo v2, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 10

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "callee"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "caller"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isblock"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "requesttime"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateDataClearedPackage(Ljava/lang/String;IZ)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "isDataCleared"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateDualAppList(I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateResetTime(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p4, :cond_20

    const-string/jumbo v2, "strExtras"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz p5, :cond_28

    const-string/jumbo v2, "strAutoRun"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    if-eqz p6, :cond_30

    const-string/jumbo v2, "strUserId"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
