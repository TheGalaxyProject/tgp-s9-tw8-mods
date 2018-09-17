.class public Lcom/android/server/enterprise/storage/EcppStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EcppStorageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EcppStorageHelper"

.field private static mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .registers 9

    const-string/jumbo v2, "/data/system/container/databases/ecpp.enterprise.db"

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/EcppStorageHelper;
    .registers 4

    const-class v1, Lcom/android/server/enterprise/storage/EcppStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/storage/EcppStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dbExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v12, 0x1

    :cond_1a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1d} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return v12

    :catch_1e
    move-exception v11

    const-string/jumbo v1, "EcppStorageHelper"

    const-string/jumbo v2, "could not execute dbExist()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_29
    move-exception v10

    const-string/jumbo v1, "EcppStorageHelper"

    const-string/jumbo v2, "could not execute dbExist() "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    if-eqz p2, :cond_11

    if-nez p3, :cond_52

    :cond_11
    const/16 p3, 0x0

    :goto_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p3

    :try_start_1c
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_8a

    :goto_22
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    :goto_32
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_87

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_32

    :cond_52
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_90
    .catchall {:try_start_1c .. :try_end_57} :catchall_a0

    const/4 v2, 0x0

    :try_start_58
    move-object/from16 v0, p2

    array-length v3, v0

    :goto_5b
    if-ge v2, v3, :cond_79

    aget-object v11, p2, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "= ? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_79
    const-string/jumbo v2, " AND "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_84} :catch_aa
    .catchall {:try_start_58 .. :try_end_84} :catchall_a7

    move-result-object v4

    move-object v9, v10

    goto :goto_13

    :cond_87
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    :cond_8a
    if-eqz v13, :cond_8f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8f
    :goto_8f
    return-object v14

    :catch_90
    move-exception v15

    :goto_91
    :try_start_91
    const-string/jumbo v2, "EcppStorageHelper"

    const-string/jumbo v3, "could not execute getDataByFields"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_a0

    if-eqz v13, :cond_8f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_8f

    :catchall_a0
    move-exception v2

    :goto_a1
    if-eqz v13, :cond_a6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a6
    throw v2

    :catchall_a7
    move-exception v2

    move-object v9, v10

    goto :goto_a1

    :catch_aa
    move-exception v15

    move-object v9, v10

    goto :goto_91
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string/jumbo v0, "EcppStorageHelper"

    const-string/jumbo v1, "onCreate ContainerPasswordPolicy-DPM db, Creates no new Table since KitKat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const-string/jumbo v0, "EcppStorageHelper"

    const-string/jumbo v1, "Downgrading not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpgrade ContainerPasswordPolicy-DPM DB Helper from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ge p2, v2, :cond_40

    :try_start_28
    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordMinimumSymbols INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordHistory INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationDate INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForWipe INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_40
    const/4 v2, 0x3

    if-ge p2, v2, :cond_73

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowWifi INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowTextMessaging INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowInternetSharing INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBluetoothMode INTEGER UNSIGNED DEFAULT 2; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowDesktopSync INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowIrDA INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowStorageCard INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowPOPIMAPEmail INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_73
    const/4 v2, 0x4

    if-ge p2, v2, :cond_82

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToLockPassword INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationTimeout INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_82
    const/4 v2, 0x5

    if-ge p2, v2, :cond_97

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowCamera INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBrowser INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_91
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_91} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_91} :catch_11b

    :try_start_91
    const-string/jumbo v2, "CREATE TABLE PASSWORD_HISTORY( _index INTEGER PRIMARY KEY AUTOINCREMENT, containerID INTEGER NOT NULL, oldPasswordHashValue BLOB NOT NULL );"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_97
    .catch Landroid/database/SQLException; {:try_start_91 .. :try_end_97} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_97} :catch_c6

    :cond_97
    :goto_97
    const/4 v2, 0x6

    if-ge p2, v2, :cond_b2

    :try_start_9a
    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS ACTIVE_PASSWORD_STATE( containerid INTEGER NOT NULL, quality INTEGER UNSIGNED DEFAULT 0, length INTEGER UNSIGNED DEFAULT 0, uppercase INTEGER UNSIGNED DEFAULT 0, lowercase INTEGER UNSIGNED DEFAULT 0, letters INTEGER UNSIGNED DEFAULT 0, numeric INTEGER UNSIGNED DEFAULT 0, nonletters INTEGER UNSIGNED DEFAULT 0, symbols INTEGER UNSIGNED DEFAULT 0, simplepassword INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN charactersequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN digitsequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v2, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN MaximumCharacteroccurrences INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/database/SQLException; {:try_start_9a .. :try_end_b2} :catch_154
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b2} :catch_137

    :cond_b2
    :goto_b2
    const/4 v2, 0x7

    if-ge p2, v2, :cond_bb

    :try_start_b5
    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForDisable INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_bb
    const/16 v2, 0x8

    if-ge p2, v2, :cond_c5

    const-string/jumbo v2, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToUnmount INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    return-void

    :catch_c6
    move-exception v1

    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Landroid/database/SQLException; {:try_start_b5 .. :try_end_e1} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_e1} :catch_11b

    goto :goto_97

    :catch_e2
    move-exception v0

    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PASSWORD_POLICY upgrade failed  SQLException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :catch_fe
    move-exception v0

    :try_start_ff
    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Landroid/database/SQLException; {:try_start_ff .. :try_end_119} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_119} :catch_11b

    goto/16 :goto_97

    :catch_11b
    move-exception v1

    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PASSWORD_POLICY upgrade failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :catch_137
    move-exception v1

    :try_start_138
    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    :catch_154
    move-exception v0

    const-string/jumbo v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catch Landroid/database/SQLException; {:try_start_138 .. :try_end_16f} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_16f} :catch_11b

    goto/16 :goto_b2
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_36
    if-eqz v9, :cond_52

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4f

    return-object v9

    :cond_45
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_36

    :cond_4f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_52
    const/4 v1, 0x0

    return-object v1
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_23

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_20

    return-object v9

    :cond_20
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_23
    return-object v4
.end method
