.class public Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MGRegDBOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field static name:Ljava/lang/String;

.field static version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "rmmreg.db"

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->name:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->version:I

    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->name:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->factory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    sget v2, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->version:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const-string/jumbo v2, "CREATE TABLE rmmreg ( _id INTEGER PRIMARY KEY autoincrement, pushreg TEXT,pushtype TEXT,dlvurl TEXT,savetime DATETIME DEFAULT (date(\'now\')))"

    const-string/jumbo v1, "CREATE TABLE rmmpref ( _id INTEGER PRIMARY KEY autoincrement, key TEXT,value TEXT,savetime DATETIME DEFAULT (date(\'now\')))"

    :try_start_6
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Create DB FAIL"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string/jumbo v0, "DROP TABLE IF EXISTS rmmreg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
