.class Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchPolicyDatabaseHelper"
.end annotation


# static fields
.field private static final LAUNCH_POLICY_DATABASE_PATH:Ljava/lang/String; = "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

.field private static final LAUNCH_POLICY_DATABASE_VERSION:I = 0x1

.field private static launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;


# instance fields
.field private final LAUNCH_POLICY_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string/jumbo v0, "LaunchPackageList"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "packagename"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "mode"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "LaunchPackageVersion"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;

    return-void
.end method

.method private static checkDatabase()Z
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "checkDatabase. There\'s no DB exist. or can not access."

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
    .registers 2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    :cond_b
    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method protected getLaunchPolicyDatabase()Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v1

    if-nez v1, :cond_e

    return-object v12

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string/jumbo v1, "LaunchPackageList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "packagename"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "mode"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    :goto_3b
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_58

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_55} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_55} :catch_65
    .catchall {:try_start_e .. :try_end_55} :catchall_97

    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    :cond_58
    if-eqz v8, :cond_5e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_5e
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_63
    const/4 v0, 0x0

    :cond_64
    return-object v12

    :catch_65
    move-exception v10

    :try_start_66
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_6d

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6d
    if-eqz v12, :cond_72

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_97

    :cond_72
    if-eqz v8, :cond_78

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_78
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_63

    :catch_7e
    move-exception v9

    :try_start_7f
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_86

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_86
    if-eqz v12, :cond_8b

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_97

    :cond_8b
    if-eqz v8, :cond_91

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_91
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_63

    :catchall_97
    move-exception v1

    if-eqz v8, :cond_9e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_9e
    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    :cond_a4
    throw v1
.end method

.method protected getLaunchPolicyDatabaseVersion()Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string/jumbo v1, "LaunchPackageVersion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "version"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4d

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    :goto_34
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_4d

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_4a} :catch_73
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4a} :catch_5a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_8c

    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    :cond_4d
    if-eqz v8, :cond_53

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_53
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_58
    const/4 v0, 0x0

    :cond_59
    return-object v12

    :catch_5a
    move-exception v10

    :try_start_5b
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_62

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_62
    if-eqz v12, :cond_67

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_8c

    :cond_67
    if-eqz v8, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6d
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_58

    :catch_73
    move-exception v9

    :try_start_74
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_7b

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_7b
    if-eqz v12, :cond_80

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_8c

    :cond_80
    if-eqz v8, :cond_86

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_86
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_58

    :catchall_8c
    move-exception v1

    if-eqz v8, :cond_93

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_93
    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    :cond_99
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
