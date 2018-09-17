.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$1;,
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_MODE_CHANNEL_ID:Ljava/lang/String; = "CONSTRAINED_MODE"

.field private static final CONSTRAINED_MODE_NOTIFICATION_ID:I = 0x11ce

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 21

    const/4 v15, 0x1

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_86

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_22
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/File;

    const-string/jumbo v2, "/efs/constrained"

    invoke-direct {v12, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v15, 0x1

    const/4 v8, 0x1

    :cond_86
    if-eqz v8, :cond_8e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8e} :catch_cb
    .catchall {:try_start_10 .. :try_end_8e} :catchall_d4

    :cond_8e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_91
    if-eqz v9, :cond_c1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_c1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    const-string/jumbo v2, "ConstrainedState"

    const-string/jumbo v3, "No data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :catch_cb
    move-exception v11

    :try_start_cc
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d4

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_91

    :catchall_d4
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .registers 12

    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    if-eqz p2, :cond_51

    :try_start_8
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v5, :cond_14

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_14
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_50

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_1b
    if-ge v4, v6, :cond_50

    aget-object v3, v5, v4

    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_2b

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :catch_2b
    move-exception v0

    const-string/jumbo v4, "ConstrainedState"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ConstrainedState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return-object v1

    :cond_51
    if-nez p1, :cond_8b

    const-string/jumbo p1, ""

    :goto_56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_50

    :try_start_5c
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1040

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_50

    iput-object p1, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_74

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_74
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_50

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    :goto_7b
    if-ge v4, v6, :cond_50

    aget-object v3, v5, v4

    iget-object v7, v1, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_88} :catch_90

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :cond_8b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "ConstrainedState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_5
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_42

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30
    .catchall {:try_start_5 .. :try_end_2f} :catchall_46

    goto :goto_18

    :catch_30
    move-exception v1

    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_46

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_37
    return-object v8

    :cond_38
    :try_start_38
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_30
    .catchall {:try_start_38 .. :try_end_3b} :catchall_46

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_42
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_46
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_17

    add-int v1, p3, v0

    array-length v2, p2

    if-lt v1, v2, :cond_b

    return v3

    :cond_b
    aget-byte v1, p1, v0

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    const v9, 0x1040292

    const/16 v8, 0x11ce

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_ConstrainedNoti"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_31

    const-string/jumbo v4, "ConstrainedState"

    const-string/jumbo v5, "Failed to get NotificationManager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    new-instance v4, Landroid/app/NotificationChannel;

    const-string/jumbo v5, "CONSTRAINED_MODE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, p1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    if-eqz p5, :cond_db

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "CONSTRAINED_MODE"

    invoke-direct {v0, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v4, 0x10805df

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x1040234

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string/jumbo v4, "DEFAULT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_84
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_c3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "pkg"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_b6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b6

    const-string/jumbo v4, "targetPkgName"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b6
    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v4, v5, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_c3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_ca
    return-void

    :cond_cb
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_84

    :cond_db
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_ca
.end method

.method private split([B[B)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    array-length v3, p2

    if-ge v1, v3, :cond_1e

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p1

    add-int v0, v1, v3

    move v1, v0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .registers 41

    const/16 v28, 0x0

    :try_start_2
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v19, v11

    const-string/jumbo v10, "status"

    const/4 v11, 0x1

    aput-object v10, v19, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "ConstrainedStateTable"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v20

    new-instance v22, Ljava/io/File;

    const-string/jumbo v10, "/efs/constrained"

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    if-eqz v31, :cond_2c2

    const/4 v10, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v38, v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_161
    .catchall {:try_start_2 .. :try_end_3c} :catchall_277

    move/from16 v37, v10

    move-object/from16 v29, v28

    :goto_40
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_2c0

    :try_start_46
    aget-object v27, v31, v37

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_302

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    move-object/from16 v18, v0

    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_60} :catch_2fd
    .catchall {:try_start_46 .. :try_end_60} :catchall_2f8

    :try_start_60
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v34

    if-nez v34, :cond_74

    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    :goto_6d
    add-int/lit8 v10, v37, 0x1

    move/from16 v37, v10

    move-object/from16 v29, v28

    goto :goto_40

    :cond_74
    sget-object v10, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a4

    new-instance v36, Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    move-object/from16 v0, v36

    invoke-direct {v0, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_a4
    if-nez v36, :cond_b5

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_af
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V

    const/16 v28, 0x0

    goto :goto_6d

    :cond_b5
    const-string/jumbo v10, "normal"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b5

    :cond_d6
    const/4 v3, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_105

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_105

    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v3, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_105
    if-eqz v3, :cond_2aa

    const/4 v4, 0x0

    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_29f

    new-instance v4, Ljava/lang/String;

    const/4 v10, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v4, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    const/4 v10, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/4 v5, 0x0

    if-eqz v33, :cond_154

    const/4 v10, 0x0

    aget-byte v10, v33, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x3

    aget-byte v11, v33, v11

    and-int/lit16 v11, v11, 0xff

    or-int v5, v10, v11

    :cond_154
    if-gtz v5, :cond_178

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_15f} :catch_161
    .catchall {:try_start_60 .. :try_end_15f} :catchall_277

    goto/16 :goto_af

    :catch_161
    move-exception v24

    :goto_162
    :try_start_162
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v10, :cond_172

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_172
    .catchall {:try_start_162 .. :try_end_172} :catchall_277

    :cond_172
    if-eqz v28, :cond_177

    :try_start_174
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_177} :catch_2f3

    :cond_177
    :goto_177
    return-void

    :cond_178
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_17b
    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_191

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bc

    :cond_191
    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1b3

    new-instance v6, Ljava/lang/String;

    const/4 v10, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v6, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_1b3
    const/4 v10, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    :cond_1bc
    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e0

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v11, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    :cond_1e0
    new-instance v2, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v2}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    if-eqz v20, :cond_25b

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_25b

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_201
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v10, "adminUid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string/jumbo v10, "status"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    new-instance v32, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.sds.mobile.mdm.client.MDMService"

    const-string/jumbo v11, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    move-object/from16 v0, v32

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x3e8

    move/from16 v0, v17

    if-ne v0, v10, :cond_27e

    if-eqz v23, :cond_27e

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_27e

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off - sds mdm was activated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v26

    :cond_25b
    :goto_25b
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    if-eqz p1, :cond_26c

    if-nez v7, :cond_294

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_26c
    :goto_26c
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_275} :catch_161
    .catchall {:try_start_17b .. :try_end_275} :catchall_277

    goto/16 :goto_af

    :catchall_277
    move-exception v10

    :goto_278
    if-eqz v28, :cond_27d

    :try_start_27a
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_27d} :catch_2f6

    :cond_27d
    :goto_27d
    throw v10

    :cond_27e
    if-eqz v16, :cond_201

    :try_start_280
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_201

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Constrained mode is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v26

    goto :goto_25b

    :cond_294
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_26c

    :cond_29f
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "comment is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    :cond_2aa
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "package name is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    :cond_2b5
    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    :cond_2c0
    move-object/from16 v28, v29

    :cond_2c2
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2e2

    const-string/jumbo v10, "ConstrainedState"

    const-string/jumbo v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_2d8} :catch_161
    .catchall {:try_start_280 .. :try_end_2d8} :catchall_277

    :goto_2d8
    if-eqz v28, :cond_177

    :try_start_2da
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2dd} :catch_2df

    goto/16 :goto_177

    :catch_2df
    move-exception v24

    goto/16 :goto_177

    :cond_2e2
    :try_start_2e2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2f2} :catch_161
    .catchall {:try_start_2e2 .. :try_end_2f2} :catchall_277

    goto :goto_2d8

    :catch_2f3
    move-exception v24

    goto/16 :goto_177

    :catch_2f6
    move-exception v24

    goto :goto_27d

    :catchall_2f8
    move-exception v10

    move-object/from16 v28, v29

    goto/16 :goto_278

    :catch_2fd
    move-exception v24

    move-object/from16 v28, v29

    goto/16 :goto_162

    :cond_302
    move-object/from16 v28, v29

    goto/16 :goto_6d
.end method

.method private updateNotification()V
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3f

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_3f
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_b

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 20

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    :try_start_10
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_1a

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_10 .. :try_end_1a} :catch_2d

    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_34

    :cond_22
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v15, 0x0

    return v15

    :catch_2d
    move-exception v8

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v15, 0x0

    return v15

    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2b

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3e

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_5e

    const/4 v15, 0x0

    return v15

    :cond_5e
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3e

    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_90

    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_90
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    return v15
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 20

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    :try_start_10
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_1a

    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_10 .. :try_end_1a} :catch_2d

    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_34

    :cond_22
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v15, 0x0

    return v15

    :catch_2d
    move-exception v8

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v15, 0x0

    return v15

    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2b

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3e

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3e

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_64

    const/4 v15, 0x0

    return v15

    :cond_64
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3e

    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_96

    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_96
    const-string/jumbo v15, "ConstrainedState"

    const-string/jumbo v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    return v15
.end method

.method public cleanUpConstrainedState(I)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_11

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string/jumbo v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "adminUid"

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_45

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_44
    :goto_44
    return-void

    :cond_45
    const-string/jumbo v5, "ConstrainedState"

    const-string/jumbo v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 42

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v30

    new-instance v31, Ljava/util/ArrayList;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const/16 v34, 0x0

    aput-object v33, v32, v34

    const-string/jumbo v33, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/16 v34, 0x1

    aput-object v33, v32, v34

    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-gtz p6, :cond_32

    const/16 v30, 0x0

    return v30

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    :try_start_46
    new-instance v5, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_59

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_ad

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6f

    const-string/jumbo v30, "ConstrainedState"

    const-string/jumbo v31, "already existing values // update"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    move-object/from16 v0, v30

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_ad} :catch_23a
    .catchall {:try_start_46 .. :try_end_ad} :catchall_2c0

    :cond_ad
    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_af
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v30

    const v31, 0x7fffffff

    and-int v8, v30, v31

    new-instance v15, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e8} :catch_2d2
    .catchall {:try_start_af .. :try_end_e8} :catchall_2cb

    :goto_e8
    :try_start_e8
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_102

    add-int/lit8 v8, v8, 0x1

    new-instance v14, Ljava/io/File;

    const-string/jumbo v30, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v14

    goto :goto_e8

    :cond_102
    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v20, v0

    shr-int/lit8 v30, p6, 0x18

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    aput-byte v30, v20, v31

    shr-int/lit8 v30, p6, 0x10

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    aput-byte v30, v20, v31

    shr-int/lit8 v30, p6, 0x8

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    aput-byte v30, v20, v31

    move/from16 v0, p6

    int-to-byte v0, v0

    move/from16 v30, v0

    const/16 v31, 0x3

    aput-byte v30, v20, v31

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_139} :catch_2d5
    .catchall {:try_start_e8 .. :try_end_139} :catchall_2ce

    if-eqz p4, :cond_1fc

    :try_start_13b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1fc

    const-string/jumbo v30, "normalv3"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_14d
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p2, :cond_242

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_242

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_175
    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_1d0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1d0

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_250

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_250

    if-eqz p5, :cond_250

    new-instance v25, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v26

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_1d0
    :goto_1d0
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_1d6} :catch_212
    .catchall {:try_start_13b .. :try_end_1d6} :catchall_231

    const/4 v12, 0x0

    :try_start_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v31, v0

    const-string/jumbo v32, "ConstrainedStateTable"

    const-string/jumbo v33, "status"

    const/16 v34, 0x1

    invoke-virtual/range {v30 .. v34}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_2ab

    if-eqz v15, :cond_1f6

    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1f6} :catch_2d5
    .catchall {:try_start_1d7 .. :try_end_1f6} :catchall_2ce

    :cond_1f6
    const/16 v30, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v30

    :cond_1fc
    if-eqz p3, :cond_223

    :try_start_1fe
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_223

    const-string/jumbo v30, "normalv2"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_210} :catch_212
    .catchall {:try_start_1fe .. :try_end_210} :catchall_231

    goto/16 :goto_14d

    :catch_212
    move-exception v6

    move-object v14, v15

    move-object v12, v13

    :goto_215
    :try_start_215
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_218
    .catchall {:try_start_215 .. :try_end_218} :catchall_2cb

    if-eqz v12, :cond_21d

    :try_start_21a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_21d} :catch_2ba
    .catchall {:try_start_21a .. :try_end_21d} :catchall_2c0

    :cond_21d
    :goto_21d
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_220
    const/16 v30, 0x0

    return v30

    :cond_223
    :try_start_223
    const-string/jumbo v30, "normal"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_22f} :catch_212
    .catchall {:try_start_223 .. :try_end_22f} :catchall_231

    goto/16 :goto_14d

    :catchall_231
    move-exception v30

    move-object v14, v15

    move-object v12, v13

    :goto_234
    if-eqz v12, :cond_239

    :try_start_236
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_239} :catch_2c5
    .catchall {:try_start_236 .. :try_end_239} :catchall_2c0

    :cond_239
    :goto_239
    :try_start_239
    throw v30
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23a} :catch_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_2c0

    :catch_23a
    move-exception v6

    :try_start_23b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_2c0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_220

    :cond_242
    :try_start_242
    const-string/jumbo v30, "DEFAULT"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_175

    :cond_250
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v11

    const/16 v30, 0x40

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v17

    if-eqz v17, :cond_287

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    :goto_279
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_287

    aget-object v23, v24, v30

    if-eqz v23, :cond_2a8

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    :cond_287
    if-eqz v16, :cond_1d0

    new-instance v22, Landroid/content/pm/Signature;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v19

    sget-object v30, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_2a6} :catch_212
    .catchall {:try_start_242 .. :try_end_2a6} :catchall_231

    goto/16 :goto_1d0

    :cond_2a8
    add-int/lit8 v30, v30, 0x1

    goto :goto_279

    :cond_2ab
    const/16 v30, 0x1

    :try_start_2ad
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2b4} :catch_2d5
    .catchall {:try_start_2ad .. :try_end_2b4} :catchall_2ce

    const/16 v30, 0x1

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v30

    :catch_2ba
    move-exception v6

    :try_start_2bb
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2be} :catch_23a
    .catchall {:try_start_2bb .. :try_end_2be} :catchall_2c0

    goto/16 :goto_21d

    :catchall_2c0
    move-exception v30

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v30

    :catch_2c5
    move-exception v6

    :try_start_2c6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2c9} :catch_23a
    .catchall {:try_start_2c6 .. :try_end_2c9} :catchall_2c0

    goto/16 :goto_239

    :catchall_2cb
    move-exception v30

    goto/16 :goto_234

    :catchall_2ce
    move-exception v30

    move-object v14, v15

    goto/16 :goto_234

    :catch_2d2
    move-exception v6

    goto/16 :goto_215

    :catch_2d5
    move-exception v6

    move-object v14, v15

    goto/16 :goto_215
.end method

.method public getConstrainedState()I
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v3, 0x2

    :cond_1f
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v3

    and-int v4, v3, p1

    if-lez v4, :cond_c

    const/4 v4, 0x1

    return v4

    :cond_28
    return v5
.end method
