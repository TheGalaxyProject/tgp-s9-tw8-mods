.class public Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# instance fields
.field public final freeBytes:J

.field public final totalBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    return-void
.end method

.method public static getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .registers 13

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v9, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/StorageStatsManager;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getVolumes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_18

    :try_start_31
    invoke-interface {p0, v8, v2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getTotalBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-interface {p0, v8, v2}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->getFreeBytes(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3c

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_18

    :catch_3c
    move-exception v1

    const-string/jumbo v9, "PrivateStorageInfo"

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :cond_44
    new-instance v9, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v9
.end method

.method public static getTotalSize(Landroid/os/storage/VolumeInfo;J)J
    .registers 9

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    :try_start_c
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide v4

    return-wide v4

    :catch_15
    move-exception v1

    const-string/jumbo v3, "PrivateStorageInfo"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v4, 0x0

    return-wide v4
.end method
