.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Lcom/android/settings/applications/PackageManagerWrapper;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    return-void
.end method

.method private getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .registers 20

    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Loading apps"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-interface {v13, v14, v0}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v3

    new-instance v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v10}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    const/4 v8, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    :goto_22
    if-ge v8, v11, :cond_8c

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v9}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_37} :catch_61
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_61

    move-result-object v12

    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v13

    if-eqz v13, :cond_69

    :cond_48
    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v14

    add-long/2addr v4, v14

    :goto_4d
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->category:I

    packed-switch v13, :pswitch_data_ba

    iget v13, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x2000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_86

    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    :goto_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :catch_61
    move-exception v7

    const-string/jumbo v13, "App unexpectedly not found"

    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    :cond_69
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->systemSize:J

    invoke-interface {v12}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v16

    add-long v14, v14, v16

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->systemSize:J

    goto :goto_4d

    :pswitch_74
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_5e

    :pswitch_7a
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    goto :goto_5e

    :pswitch_80
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    goto :goto_5e

    :cond_86
    iget-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v14, v4

    iput-wide v14, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    goto :goto_5e

    :cond_8c
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Loading external stats"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v13

    iput-object v13, v10, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a7} :catch_b1

    :goto_a7
    const-string/jumbo v13, "StorageAsyncLoader"

    const-string/jumbo v14, "Obtaining result completed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :catch_b1
    move-exception v6

    const-string/jumbo v13, "StorageAsyncLoader"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_74
        :pswitch_7a
        :pswitch_80
    .end packed-switch
.end method

.method private loadApps()Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Lcom/android/settings/applications/UserManagerWrapper;

    invoke-interface {v5}, Lcom/android/settings/applications/UserManagerWrapper;->getUsers()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_10
    if-ge v0, v4, :cond_26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    return-object v3
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
