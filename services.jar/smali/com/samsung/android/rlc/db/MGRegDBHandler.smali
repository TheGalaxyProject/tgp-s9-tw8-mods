.class public Lcom/samsung/android/rlc/db/MGRegDBHandler;
.super Ljava/lang/Object;
.source "MGRegDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;
    .registers 2

    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    :cond_b
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-object v0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pushtype"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "dlvurl"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rmmreg"

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2a
    .catchall {:try_start_1 .. :try_end_25} :catchall_3a

    const/4 v1, 0x1

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_29
    return v1

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_29

    :catchall_3a
    move-exception v3

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v2, 0x0

    const-string/jumbo v1, "rmmreg"

    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3b

    :try_start_10
    const-string/jumbo v11, ""

    :cond_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "pushtype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_41
    .catchall {:try_start_10 .. :try_end_35} :catchall_53

    if-eqz v8, :cond_3a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3a
    return-object v10

    :cond_3b
    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_40
    :goto_40
    return-object v2

    :catch_41
    move-exception v9

    :try_start_42
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB select fail"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_53

    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_40

    :catchall_53
    move-exception v0

    if-eqz v8, :cond_59

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_59
    throw v0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rmmreg"

    const-string/jumbo v4, "pushtype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_26
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_25
    return v1

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DB update fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_36

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_25

    :catchall_36
    move-exception v3

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method


# virtual methods
.method public declared-synchronized getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string/jumbo v2, "dlvurl"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-object v1

    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "rmmpref"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_74

    move-result-object v8

    if-eqz v8, :cond_46

    :try_start_17
    const-string/jumbo v11, ""

    :cond_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_4d
    .catchall {:try_start_17 .. :try_end_3f} :catchall_77

    if-eqz v8, :cond_44

    :try_start_41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_74

    :cond_44
    monitor-exit p0

    return-object v10

    :cond_46
    if-eqz v8, :cond_4b

    :try_start_48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_74

    :cond_4b
    :goto_4b
    monitor-exit p0

    return-object v12

    :catch_4d
    move-exception v9

    :try_start_4e
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DB getValue fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_77

    if-eqz v8, :cond_4b

    :try_start_70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_4b

    :catchall_74
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_77
    move-exception v1

    if-eqz v8, :cond_7d

    :try_start_7a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_74
.end method

.method public declared-synchronized insertValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v4}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_57

    move-result-object v4

    if-nez v4, :cond_5f

    :try_start_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rmmpref"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_32
    .catchall {:try_start_e .. :try_end_2c} :catchall_5a

    const/4 v2, 0x1

    :try_start_2d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_57

    :goto_30
    monitor-exit p0

    return v2

    :catch_32
    move-exception v1

    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DB insertValue fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_5a

    :try_start_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_30

    :catchall_57
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_5a
    move-exception v4

    :try_start_5b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    :cond_5f
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_57

    goto :goto_30
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string/jumbo v2, "pushreg"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-object v1

    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v2}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "pushreg"

    invoke-direct {p0, p2, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Insert new row"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_3e

    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update row : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3e

    goto :goto_1f

    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v4}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_3e

    move-result-object v0

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rmmpref"

    const-string/jumbo v5, "key=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_2e
    .catchall {:try_start_8 .. :try_end_28} :catchall_41

    const/4 v2, 0x1

    :try_start_29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3e

    :goto_2c
    monitor-exit p0

    return v2

    :catch_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "DB updateValue fail"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_41

    :try_start_3a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_2c

    :catchall_3e
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_41
    move-exception v4

    :try_start_42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_3e
.end method
