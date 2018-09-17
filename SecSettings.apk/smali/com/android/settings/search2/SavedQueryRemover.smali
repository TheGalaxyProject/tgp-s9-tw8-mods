.class public Lcom/android/settings/search2/SavedQueryRemover;
.super Lcom/android/settings/utils/AsyncLoader;
.source "SavedQueryRemover.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/search2/SavedQueryRemover;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/search2/SavedQueryRemover;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    const-string/jumbo v1, "SavedQueryRemover"

    const-string/jumbo v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/search2/SavedQueryRemover;->loadInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/Void;
    .registers 8

    invoke-direct {p0}, Lcom/android/settings/search2/SavedQueryRemover;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_4
    const-string/jumbo v2, "saved_queries"

    const-string/jumbo v3, "query = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/search2/SavedQueryRemover;->mQuery:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_17

    :goto_15
    const/4 v2, 0x0

    return-object v2

    :catch_17
    move-exception v1

    const-string/jumbo v2, "SavedQueryRemover"

    const-string/jumbo v3, "Cannot update saved Search queries"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/SavedQueryRemover;->onDiscardResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method
