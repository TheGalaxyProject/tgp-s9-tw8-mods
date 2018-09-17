.class public Lcom/samsung/android/rlc/db/PushFilterDBHandler;
.super Ljava/lang/Object;
.source "PushFilterDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "messageid"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pushfilter"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_28
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_27
    return v1

    :catch_28
    move-exception v0

    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DB insert fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_27

    :catchall_38
    move-exception v3

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v0, "DELETE FROM pushfilter WHERE _id IN (SELECT * FROM((SELECT _id FROM pushfilter ORDER BY _id ASC LIMIT 10 )) AS A)"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_11
    return v2

    :catch_12
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "DB delete fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_11

    :catchall_22
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 10

    const/4 v2, 0x0

    const-string/jumbo v1, "pushfilter"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isSameMessageID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_4
    iget-object v8, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-virtual {v8}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    :cond_10
    if-nez v0, :cond_4f

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : CURSOR IS NULL!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_1e1
    .catchall {:try_start_4 .. :try_end_32} :catchall_21f

    if-eqz v0, :cond_37

    :try_start_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    if-eqz v1, :cond_3c

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3f
    .catchall {:try_start_34 .. :try_end_3c} :catchall_4c

    :cond_3c
    :goto_3c
    const/4 v8, 0x0

    monitor-exit p0

    return v8

    :catch_3f
    move-exception v2

    :try_start_40
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4c

    goto :goto_3c

    :catchall_4c
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_4f
    :try_start_4f
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Total Data count. Remind "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "messageid"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Recived MessageID Value -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Comparing MessageID in DataBase "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_da

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19f

    const/4 v4, 0x1

    :cond_da
    sget-object v9, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    if-eqz v4, :cond_1a2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]PushFilter DB STATE : Already saved same data in DB."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_f9
    invoke-static {v9, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_193

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_14c

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : DB IS FULL! Delete start"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Delete success"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    :goto_14c
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Saving new data into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {p0, v7, p1, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    if-eqz v6, :cond_1fd

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Save Success into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_193} :catch_1e1
    .catchall {:try_start_4f .. :try_end_193} :catchall_21f

    :cond_193
    :goto_193
    if-eqz v0, :cond_198

    :try_start_195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_198
    if-eqz v1, :cond_19d

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19d} :catch_22b
    .catchall {:try_start_195 .. :try_end_19d} :catchall_4c

    :cond_19d
    :goto_19d
    monitor-exit p0

    return v4

    :cond_19f
    const/4 v4, 0x0

    goto/16 :goto_c9

    :cond_1a2
    :try_start_1a2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]PushFilter DB STATE : No saved same data in DB"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f9

    :cond_1bf
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Delete fail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1df} :catch_1e1
    .catchall {:try_start_1a2 .. :try_end_1df} :catchall_21f

    goto/16 :goto_14c

    :catch_1e1
    move-exception v2

    :try_start_1e2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e5
    .catchall {:try_start_1e2 .. :try_end_1e5} :catchall_21f

    if-eqz v0, :cond_1ea

    :try_start_1e7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1ea
    if-eqz v1, :cond_19d

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ef} :catch_1f0
    .catchall {:try_start_1e7 .. :try_end_1ef} :catchall_4c

    goto :goto_19d

    :catch_1f0
    move-exception v2

    :try_start_1f1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fc
    .catchall {:try_start_1f1 .. :try_end_1fc} :catchall_4c

    goto :goto_19d

    :cond_1fd
    :try_start_1fd
    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]PushFilter DB STATE : Save Fail into DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_21d} :catch_1e1
    .catchall {:try_start_1fd .. :try_end_21d} :catchall_21f

    goto/16 :goto_193

    :catchall_21f
    move-exception v8

    if-eqz v0, :cond_225

    :try_start_222
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_225
    if-eqz v1, :cond_22a

    invoke-direct {p0, v1}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_22a} :catch_239
    .catchall {:try_start_222 .. :try_end_22a} :catchall_4c

    :cond_22a
    :goto_22a
    :try_start_22a
    throw v8

    :catch_22b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v8, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "DB CLOSE FAIL"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19d

    :catch_239
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v9, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "DB CLOSE FAIL"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_245
    .catchall {:try_start_22a .. :try_end_245} :catchall_4c

    goto :goto_22a
.end method
