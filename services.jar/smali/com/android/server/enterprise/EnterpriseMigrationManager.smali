.class public Lcom/android/server/enterprise/EnterpriseMigrationManager;
.super Ljava/lang/Object;
.source "EnterpriseMigrationManager.java"


# static fields
.field private static final BROWSER_PROXY_TABLE:Ljava/lang/String; = "BROWSER_PROXY"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_SETTINGS_TABLE:Ljava/lang/String; = "ContainerSettings"

.field private static final DEFAULT_ALL_PACKAGES:Ljava/lang/String; = ".*"

.field private static final EMAIL_POLICY_TABLE:Ljava/lang/String; = "ADMIN_REF"

.field private static final KNOX_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field public static final NEW_CONTAINER_ID:J = 0x0L

.field private static NEW_CONTAINER_USER_ID:J = 0x0L

.field private static OLD_CONTAINER_ID:J = 0x0L

.field public static final OLD_CONTAINER_USER_ID:J = 0x0L

.field private static final PREFIX_OF_CONTAINERIZED_APP:Ljava/lang/String; = "sec_container_1."

.field private static final TAG:Ljava/lang/String; = "EnterpriseMigrationManager"

.field private static final WHITE_LIST_INSTALL_APPS_TABLE:Ljava/lang/String; = "WhiteListInstallApps"

.field private static final deleteOldContainerIDRowTableNames:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

.field private static migrationResult:Z

.field private static final updateAdminUIDTableNames:[Ljava/lang/String;

.field private static final updateDefaultValuesTableNames:[Ljava/lang/String;

.field private static final updatePackageNameTableNames:[Ljava/lang/String;


# instance fields
.field private mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

.field private mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    sput-boolean v3, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AccountBlackWhiteList"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ADMIN_REF"

    aput-object v1, v0, v3

    const-string/jumbo v1, "APPLICATION_COMPONENT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "APPLICATION_GENERAL"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "APPLICATION_MISC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "APPLICATION_PERMISSION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "APPLICATION_PERMISSIONCONTROL"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "APPLICATION_SIGNATURE2"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "BROWSER"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "EmailSettingsTable"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "ExchangeAccountTable"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SmartCardAccessTable"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "SmartCardAccessWhitelistTable"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SmartCardBrowserCertAliasTable"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "SmartCardBrowserTable"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "SmartCardEmailTable"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "WebFilterTable"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "WebFilterSettingsTable"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "APPLICATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "PASSWORD"

    aput-object v1, v0, v4

    const-string/jumbo v1, "RESTRICTION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "CONTAINER"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ADMIN"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    const-string/jumbo v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    return-void
.end method

.method private deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    const/4 v3, 0x1

    return v3

    :catch_13
    move-exception v2

    const-string/jumbo v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "could not execute delete() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    const/4 v3, 0x0

    return v3

    :catch_30
    move-exception v1

    const-string/jumbo v3, "EnterpriseMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "could not execute delete() for tablename : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v3, ""

    :try_start_b
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_6c

    move-result-object v3

    :goto_1a
    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "check permission for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_44

    if-nez v1, :cond_88

    :cond_44
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No Container Migration Permission to calling Package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_6c
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_88
    const-string/jumbo v6, "com.sec.knox.containeragent"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_44

    return-void
.end method

.method private getAdminID()J
    .registers 11

    const-wide/16 v4, -0x1

    :try_start_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "containerID!=?"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "userID"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "ADMIN"

    const-string/jumbo v8, "adminID"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3b

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3a} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3c

    move-result-wide v4

    :cond_3b
    :goto_3b
    return-wide v4

    :catch_3c
    move-exception v3

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getAdminID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_47
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getAdminID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mInstance:Lcom/android/server/enterprise/EnterpriseMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNewConatinerAdminUID()J
    .registers 11

    const-wide/16 v4, -0x1

    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "containerID"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "userID"

    sget-wide v8, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "ADMIN"

    const-string/jumbo v8, "adminUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3c

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3b} :catch_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3d

    move-result-wide v4

    :cond_3c
    :goto_3c
    return-wide v4

    :catch_3d
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :catch_48
    move-exception v1

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getNewConatinerAdminUID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private getOldConatinerAdminUID()J
    .registers 11

    const-wide/16 v4, -0x1

    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "containerID!=?"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "userID"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "ADMIN"

    const-string/jumbo v8, "adminUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3b

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3a} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3c

    move-result-wide v4

    :cond_3b
    :goto_3b
    return-wide v4

    :catch_3c
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_47
    move-exception v1

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getOldConatinerAdminUID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private getOldContainerID()J
    .registers 11

    const-wide/16 v4, -0x1

    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "containerID!=?"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "userID"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "ADMIN"

    const-string/jumbo v8, "containerID"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3b

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3a} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3c

    move-result-wide v4

    :cond_3b
    :goto_3b
    return-wide v4

    :catch_3c
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_47
    move-exception v1

    const-string/jumbo v6, "EnterpriseMigrationManager"

    const-string/jumbo v7, "could not execute getLongList() in getOldContainerID()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private updateBrowserProxy(Ljava/lang/String;JJ)Z
    .registers 14

    const/4 v4, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v5, p4

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_d
    const-string/jumbo v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "proxyServer"

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mBrowserPolicyService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    invoke-interface {v5, v2, v3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    const-string/jumbo v5, "EnterpriseMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update BrowserProxy done with retrun : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_40

    :goto_3f
    return v4

    :catch_40
    move-exception v1

    const-string/jumbo v5, "EnterpriseMigrationManager"

    const-string/jumbo v6, "update BrowserProxy could not be executed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_3f
.end method

.method private updateContainerSettingsTable(Ljava/lang/String;JJ)Z
    .registers 16

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v6, p4

    invoke-direct {v2, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    :try_start_c
    const-string/jumbo v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "allowContactInfoToNonKnox"

    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "Contacts"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    const-string/jumbo v7, "knox-export-data"

    invoke-interface {v6, v2, v0, v7, v4}, Lcom/samsung/android/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_34

    move-result v5

    :goto_33
    return v5

    :catch_34
    move-exception v3

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception occured during updateContainerSettingsTable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_33
.end method

.method private updateDefaultContainerApplications(J)Z
    .registers 20

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v0, p1

    long-to-int v12, v0

    invoke-direct {v4, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    move-result-object v12

    sget-wide v14, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v13, v14

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getPackageNames(I)Ljava/util/List;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_30

    move-result-object v8

    :goto_1d
    if-eqz v8, :cond_25

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_3c

    :cond_25
    const-string/jumbo v12, "EnterpriseMigrationManager"

    const-string/jumbo v13, "getPackageNames() for Application Table Update returned empty list"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    return v12

    :catch_30
    move-exception v6

    const-string/jumbo v12, "EnterpriseMigrationManager"

    const-string/jumbo v13, "getPackageNames() for Application Table Update could not be executed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_1d

    :cond_3c
    const-string/jumbo v12, "com.sec.android.app.knoxlauncher"

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "com.sec.knox.app.container"

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_49
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_132

    const-string/jumbo v13, "EnterpriseMigrationManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDefaultContainerApplications : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "adminUid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v12, "packageName"

    invoke-virtual {v3, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v13, "APPLICATION"

    const-string/jumbo v14, "controlState"

    invoke-virtual {v12, v13, v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_bb

    const-string/jumbo v12, "controlState"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_bb

    const-string/jumbo v12, "controlState"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_ad} :catch_115
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ad} :catch_f8

    move-result v12

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_bb

    :try_start_b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    const/4 v13, 0x0

    invoke-interface {v12, v4, v9, v13}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_bb} :catch_db
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bb} :catch_be

    :cond_bb
    :goto_bb
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    :catch_be
    move-exception v6

    :try_start_bf
    const-string/jumbo v12, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_bb

    :catch_db
    move-exception v5

    const-string/jumbo v12, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "could not execute putValues() for tablename : APPLICATION package name : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_f6} :catch_115
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_f6} :catch_f8

    const/4 v10, 0x0

    goto :goto_bb

    :catch_f8
    move-exception v6

    const-string/jumbo v12, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_bb

    :catch_115
    move-exception v5

    const-string/jumbo v12, "EnterpriseMigrationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "could not execute getValue() for tablename : APPLICATION package name : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_bb

    :cond_132
    return v10
.end method

.method private updateEmailPolicyPkgName(Ljava/lang/String;J)Z
    .registers 14

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_f
    const-string/jumbo v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "policyName"

    invoke-virtual {v6, p1, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "policyName"

    invoke-static {v5}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_3b} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3b} :catch_3d

    const/4 v6, 0x1

    return v6

    :catch_3d
    move-exception v3

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "could not execute update() for tablename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    const/4 v6, 0x0

    return v6

    :catch_5a
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "could not execute update() for tablename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method private updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z
    .registers 24

    const/4 v8, 0x1

    const/4 v7, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v0, p7

    long-to-int v10, v0

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    long-to-int v11, v12

    invoke-direct {v5, v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    move-wide/from16 v0, p5

    long-to-int v10, v0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v8, 0x1

    :try_start_1c
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_58

    :goto_3c
    const/4 v3, 0x0

    :goto_3d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_64

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :catch_58
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_3c

    :cond_64
    :try_start_64
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addPackagesToClearDataBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_84} :catch_10e

    :goto_84
    if-eqz v7, :cond_11b

    move v7, v8

    :goto_87
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_8b
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ab} :catch_11e

    :goto_ab
    :try_start_ab
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addPackagesToClearDataWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cb} :catch_12a

    :goto_cb
    if-eqz v7, :cond_136

    move v7, v8

    :goto_ce
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_d2
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f2} :catch_138

    :goto_f2
    const/4 v3, 0x0

    :goto_f3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_144

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, ".*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10b

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f3

    :catch_10e
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "addPackagesToClearDataBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_84

    :cond_11b
    const/4 v7, 0x0

    goto/16 :goto_87

    :catch_11e
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_ab

    :catch_12a
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "addPackagesToClearDataWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_cb

    :cond_136
    const/4 v7, 0x0

    goto :goto_ce

    :catch_138
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_f2

    :cond_144
    :try_start_144
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addPackagesToClearCacheBlackList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_164} :catch_1b4

    :goto_164
    if-eqz v7, :cond_1c0

    move v7, v8

    :goto_167
    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    :try_start_16b
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackagesFromClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_18b} :catch_1c2

    :goto_18b
    :try_start_18b
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v10, v4, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v9

    const-string/jumbo v10, "EnterpriseMigrationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addPackagesToClearCacheWhiteList() for Application Policy Update returned : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1ab} :catch_1ce

    :goto_1ab
    if-eqz v7, :cond_1da

    move v7, v8

    :goto_1ae
    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz v7, :cond_1dc

    :goto_1b3
    return v8

    :catch_1b4
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "addPackagesToClearCacheBlackList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_164

    :cond_1c0
    const/4 v7, 0x0

    goto :goto_167

    :catch_1c2
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "getPackagesFromClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_18b

    :catch_1ce
    move-exception v2

    const-string/jumbo v10, "EnterpriseMigrationManager"

    const-string/jumbo v11, "addPackagesToClearCacheWhiteList() for Application Policy Update could not be executed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_1ab

    :cond_1da
    const/4 v7, 0x0

    goto :goto_1ae

    :cond_1dc
    const/4 v8, 0x0

    goto :goto_1b3
.end method

.method private updateTableAdminUid(Ljava/lang/String;JJ)Z
    .registers 14

    const-string/jumbo v4, "ADMIN_REF"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateEmailPolicyPkgName(Ljava/lang/String;J)Z

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_16
    const-string/jumbo v4, "adminUid =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "adminUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_2f} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2f} :catch_31

    const/4 v4, 0x1

    return v4

    :catch_31
    move-exception v2

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not execute update() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    const/4 v4, 0x0

    return v4

    :catch_4e
    move-exception v1

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not execute update() for tablename : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private updateTableDefaultValues(Ljava/lang/String;JJ)Z
    .registers 16

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_8
    const-string/jumbo v6, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_17} :catch_38
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1b

    move-result v0

    :goto_18
    if-gtz v0, :cond_55

    return v4

    :catch_1b
    move-exception v3

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "could not execute getCount() for tablename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_18

    :catch_38
    move-exception v2

    const-string/jumbo v6, "EnterpriseMigrationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "could not execute getCount() for tablename : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_18

    :cond_55
    const-string/jumbo v6, "adminUid"

    invoke-direct {p0, p1, v6, p4, p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v5

    :cond_62
    return v5
.end method

.method private updateWhitelistInstallApp(Ljava/lang/String;JJ)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blockAdminToReceivePolicy(Z)Z
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_37

    :try_start_a
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "nok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1a

    move-result v1

    :goto_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_1a
    move-exception v0

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured during set migration STATE_NOK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_16

    :cond_37
    :try_start_37
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "migrationState"

    const-string/jumbo v6, "ok"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_44

    move-result v1

    goto :goto_16

    :catch_44
    move-exception v0

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured during set migration STATE_OK : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getEnterpriseMigrationResult()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    return v0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 30

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/16 v19, 0x1

    const/16 v22, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v24

    sput-wide v24, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sput-wide v24, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v14

    const-string/jumbo v21, "APPLICATION"

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v0, v14

    move/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_32
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v23, "adminUid"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v24, "packageName"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_57} :catch_13c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_57} :catch_12e

    move-result-object v13

    :goto_58
    const/4 v12, 0x0

    :goto_59
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_1cf

    const-string/jumbo v24, "EnterpriseMigrationManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "check application disabled : "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v23, "adminUid"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v23, "packageName"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v24, "controlState"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_12a

    const-string/jumbo v23, "controlState"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    if-eqz v23, :cond_12a

    const-string/jumbo v23, "controlState"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_dc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b0 .. :try_end_dc} :catch_19d
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_dc} :catch_16c

    move-result v23

    and-int/lit8 v23, v23, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_12a

    :try_start_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-object/from16 v23, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v9, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v22

    const-string/jumbo v23, "EnterpriseMigrationManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setApplicationState(false) for Application Policy Update package name : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " returned : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_12a} :catch_14a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e7 .. :try_end_12a} :catch_19d

    :cond_12a
    :goto_12a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_59

    :catch_12e
    move-exception v11

    const-string/jumbo v23, "EnterpriseMigrationManager"

    const-string/jumbo v24, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_58

    :catch_13c
    move-exception v10

    const-string/jumbo v23, "EnterpriseMigrationManager"

    const-string/jumbo v24, "could not execute getStringList() in Disable Application Policy"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_58

    :catch_14a
    move-exception v11

    :try_start_14b
    const-string/jumbo v23, "EnterpriseMigrationManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setApplicationState(false) for Application Policy Update could not be executed for package name : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_169
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14b .. :try_end_169} :catch_19d
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_169} :catch_16c

    const/16 v19, 0x0

    goto :goto_12a

    :catch_16c
    move-exception v11

    const-string/jumbo v23, "EnterpriseMigrationManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "could not execute getValue() for tablename : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " package name : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto :goto_12a

    :catch_19d
    move-exception v10

    const-string/jumbo v23, "EnterpriseMigrationManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "could not execute getValue() for tablename : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " package name : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_12a

    :cond_1cf
    const/4 v12, 0x0

    :goto_1d0
    sget-object v23, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_227

    sget-object v23, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v23, v23, v12

    const-string/jumbo v24, "containerID"

    sget-wide v26, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v22

    const-string/jumbo v23, "EnterpriseMigrationManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "deleteTableRow() for TableName : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " returned : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_224

    move/from16 v19, v22

    :goto_221
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d0

    :cond_224
    const/16 v19, 0x0

    goto :goto_221

    :cond_227
    return v19
.end method

.method public migrateEnterpriseDB(IZ)J
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v22, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldContainerID()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move/from16 v0, p1

    int-to-long v4, v0

    sput-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getOldConatinerAdminUID()J

    move-result-wide v6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getNewConatinerAdminUID()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getAdminID()J

    move-result-wide v18

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v4, v8

    const/4 v5, 0x0

    invoke-direct {v10, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v4, :cond_37

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_99

    :cond_37
    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error in Enterprise Container migration "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_93} :catch_16f
    .catchall {:try_start_2b .. :try_end_93} :catchall_314

    const-wide/16 v4, -0x1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :cond_99
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_37

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_37

    :try_start_a5
    sget-wide v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_37

    if-eqz v10, :cond_37

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    if-eqz p2, :cond_2a8

    const/16 v21, 0x0

    :goto_b6
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_fd

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableDefaultValues(Ljava/lang/String;JJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableDefaultValues() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultValuesTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_fb

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :goto_f6
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_f8} :catch_16f
    .catchall {:try_start_a5 .. :try_end_f8} :catchall_314

    add-int/lit8 v21, v21, 0x1

    goto :goto_b6

    :cond_fb
    const/4 v4, 0x0

    goto :goto_f6

    :cond_fd
    if-eqz v23, :cond_1aa

    :try_start_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    const/4 v5, 0x0

    invoke-interface {v4, v10, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_107} :catch_14e
    .catchall {:try_start_ff .. :try_end_107} :catchall_314

    :goto_107
    const/16 v21, 0x0

    :goto_109
    :try_start_109
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_1b0

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v5, v4, v21

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateTableAdminUid(Ljava/lang/String;JJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTableAdminUid() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateAdminUIDTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_1ae

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :goto_149
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_109

    :catch_14e
    move-exception v20

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Some unknown exception occured in Restriction Policy setScreenCapture() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_16e} :catch_16f
    .catchall {:try_start_109 .. :try_end_16e} :catchall_314

    goto :goto_107

    :catch_16f
    move-exception v20

    :try_start_170
    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Some unknown exception occured in enterprise DB migration!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z
    :try_end_18f
    .catchall {:try_start_170 .. :try_end_18f} :catchall_314

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_192
    if-eqz p2, :cond_1a9

    if-eqz v22, :cond_1a9

    :try_start_196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/EnterpriseMigrationManager;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->NEW_CONTAINER_USER_ID:J

    long-to-int v5, v12

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->onUserMigrated(I)V

    const-string/jumbo v4, "EnterpriseMigrationManager"

    const-string/jumbo v5, "Restriction Policy onUserMigrated() called for TableName : RESTRICTION"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1a9} :catch_319

    :cond_1a9
    :goto_1a9
    return-wide v8

    :cond_1aa
    const/16 v22, 0x0

    goto/16 :goto_107

    :cond_1ae
    const/4 v4, 0x0

    goto :goto_149

    :cond_1b0
    const/16 v21, 0x0

    :goto_1b2
    :try_start_1b2
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_1f7

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v12, v4, v21

    const-string/jumbo v13, "packageName"

    move-object/from16 v11, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePkgNameInApplicationTable(Ljava/lang/String;Ljava/lang/String;JJJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePkgNameInApplicationTable() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updatePackageNameTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1b2

    :cond_1f7
    const-string/jumbo v5, "WhiteListInstallApps"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateWhitelistInstallApp(Ljava/lang/String;JJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWhitelistInstallApp() for TableName : WhiteListInstallApps returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_2a1

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :goto_220
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string/jumbo v5, "BROWSER_PROXY"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateBrowserProxy(Ljava/lang/String;JJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateBrowserProxy() for TableName : BROWSER_PROXY returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_2a4

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :goto_24b
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string/jumbo v5, "ContainerSettings"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateContainerSettingsTable(Ljava/lang/String;JJ)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateContainerSettingsTable() for TableName : ContainerSettings returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_2a6

    sget-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    :goto_276
    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_29c} :catch_16f
    .catchall {:try_start_1b2 .. :try_end_29c} :catchall_314

    :cond_29c
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_192

    :cond_2a1
    const/4 v4, 0x0

    goto/16 :goto_220

    :cond_2a4
    const/4 v4, 0x0

    goto :goto_24b

    :cond_2a6
    const/4 v4, 0x0

    goto :goto_276

    :cond_2a8
    :try_start_2a8
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->updateDefaultContainerApplications(J)Z

    move-result v23

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDefaultContainerApplications() for TableName : packageName returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    :goto_2ce
    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_29c

    sget-object v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v4, v4, v21

    const-string/jumbo v5, "containerID"

    sget-wide v12, Lcom/android/server/enterprise/EnterpriseMigrationManager;->OLD_CONTAINER_ID:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteTableRow(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteTableRow() for TableName : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->deleteOldContainerIDRowTableNames:[Ljava/lang/String;

    aget-object v11, v11, v21

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " returned : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v11, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_311
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_311} :catch_16f
    .catchall {:try_start_2a8 .. :try_end_311} :catchall_314

    add-int/lit8 v21, v21, 0x1

    goto :goto_2ce

    :catchall_314
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_319
    move-exception v20

    const-string/jumbo v4, "EnterpriseMigrationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Some unknown exception occured in Restriction Policy onUserMigrated() call!!! "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrationResult:Z

    goto/16 :goto_1a9
.end method

.method removePrefixPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sec_container_1."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
