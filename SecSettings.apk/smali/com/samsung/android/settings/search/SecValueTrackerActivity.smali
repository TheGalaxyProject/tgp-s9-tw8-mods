.class public Lcom/samsung/android/settings/search/SecValueTrackerActivity;
.super Lcom/android/settings/SettingsActivity;
.source "SecValueTrackerActivity.java"


# instance fields
.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/search/SecValueTrackerActivity;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/search/SecValueTrackerActivity;Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->setSettingsActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method private getAndroidMetaLocale()Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string/jumbo v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "android_metadata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :try_start_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v5, "locale"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_40} :catch_67
    .catchall {:try_start_28 .. :try_end_40} :catchall_81

    move-result-object v3

    :cond_41
    if-eqz v0, :cond_46

    :try_start_43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_65
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_43 .. :try_end_46} :catch_49

    :cond_46
    :goto_46
    if-eqz v6, :cond_64

    :try_start_48
    throw v6
    :try_end_49
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception v2

    const-string/jumbo v5, "SecValueTrackerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CursorIndexOutOfBoundsException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-object v3

    :catch_65
    move-exception v6

    goto :goto_46

    :catch_67
    move-exception v5

    :try_start_68
    throw v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_6d
    if-eqz v0, :cond_72

    :try_start_6f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_75
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_6f .. :try_end_72} :catch_49

    :cond_72
    :goto_72
    if-eqz v6, :cond_80

    :try_start_74
    throw v6

    :catch_75
    move-exception v7

    if-nez v6, :cond_7a

    move-object v6, v7

    goto :goto_72

    :cond_7a
    if-eq v6, v7, :cond_72

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_72

    :cond_80
    throw v5
    :try_end_81
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_74 .. :try_end_81} :catch_49

    :catchall_81
    move-exception v5

    goto :goto_6d
.end method

.method private getprefsIndexLocale()Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string/jumbo v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prefs_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ORDER BY rowId DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :try_start_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    const-string/jumbo v5, "locale"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_46} :catch_6d
    .catchall {:try_start_2e .. :try_end_46} :catchall_87

    move-result-object v3

    :cond_47
    if-eqz v0, :cond_4c

    :try_start_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_6b
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_49 .. :try_end_4c} :catch_4f

    :cond_4c
    :goto_4c
    if-eqz v6, :cond_6a

    :try_start_4e
    throw v6
    :try_end_4f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4e .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v2

    const-string/jumbo v5, "SecValueTrackerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CursorIndexOutOfBoundsException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-object v3

    :catch_6b
    move-exception v6

    goto :goto_4c

    :catch_6d
    move-exception v5

    :try_start_6e
    throw v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_73
    if-eqz v0, :cond_78

    :try_start_75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_7b
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_75 .. :try_end_78} :catch_4f

    :cond_78
    :goto_78
    if-eqz v6, :cond_86

    :try_start_7a
    throw v6

    :catch_7b
    move-exception v7

    if-nez v6, :cond_80

    move-object v6, v7

    goto :goto_78

    :cond_80
    if-eq v6, v7, :cond_78

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_78

    :cond_86
    throw v5
    :try_end_87
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7a .. :try_end_87} :catch_4f

    :catchall_87
    move-exception v5

    goto :goto_73
.end method

.method private updateSearchIndexing()V
    .registers 3

    new-instance v0, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;-><init>(Lcom/samsung/android/settings/search/SecValueTrackerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/SecValueTrackerActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public initCategories(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "com.samsung.android.app.galaxyfinder.LAUNCH_SFINDER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->getAndroidMetaLocale()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->getprefsIndexLocale()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SecValueTrackerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "androidMetaLocale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , prefsMetaLocale :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->updateSearchIndexing()V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->updateSearchIndexing()V

    goto :goto_4f

    :cond_5a
    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecValueTrackerActivity;->updateSearchIndexing()V

    goto :goto_4f
.end method

.method public preCheckStatus()V
    .registers 3

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    :cond_16
    return-void
.end method
