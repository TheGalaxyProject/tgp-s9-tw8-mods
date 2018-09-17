.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDataDelivery"

.field private static appset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private static pms:Lcom/android/server/pm/PackageManagerService;


# instance fields
.field private dataEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private registeredDataRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation
.end field

.field private startTimer:J

.field private syncObject:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageManager()Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-void
.end method

.method private static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "which "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v1, ""

    :goto_35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3f

    goto :goto_35

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_3f

    goto :goto_43
.end method

.method private static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v12, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_6

    return-object v12

    :cond_6
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_34

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find the packages for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_34
    array-length v1, v11

    const/4 v3, 0x1

    if-ne v1, v3, :cond_db

    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCacheBasedOnUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3f

    return-object v9

    :cond_3f
    const/4 v1, 0x0

    aget-object v2, v11, v1

    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_db

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_db

    new-instance v7, Ljava/io/File;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_db

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_93

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find the file location for the process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_93
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_db

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_c7

    const/4 v0, 0x0

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xf

    if-le v1, v3, :cond_c8

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_c2
    if-eqz v0, :cond_c7

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    :cond_c7
    return-object v5

    :cond_c8
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d6} :catch_d7

    goto :goto_c2

    :catch_d7
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_db
    return-object v12
.end method

.method protected static clearHashCacheEntire()V
    .registers 4

    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_27

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearHashCacheEntire Called : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_50

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DataDelivery hash cache entire deletion : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit v1

    return-void

    :catchall_52
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 15

    const/4 v9, 0x0

    if-eqz p1, :cond_f4

    if-eqz p2, :cond_f4

    if-eqz p3, :cond_f4

    if-eqz p4, :cond_f4

    :try_start_9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_8d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    :cond_27
    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_f4

    new-instance v7, Ljava/io/File;

    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_f4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6b

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_6b
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f4

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v0, :cond_8c

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    :cond_8c
    return-object v5

    :cond_8d
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_f4

    new-instance v7, Ljava/io/File;

    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_f4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d7

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_d7
    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f4

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v0, :cond_ef

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ef} :catch_f0

    :cond_ef
    return-object v5

    :catch_f0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f4
    return-object v9
.end method

.method private getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_13

    :cond_5
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v4, :cond_12

    const-string/jumbo v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v5, "getAugmentedData: Helper or data is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v3

    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_38

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->processData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    return-object v3
.end method

.method private static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 27

    :try_start_0
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v20, :cond_7

    const/16 v20, 0x0

    return-object v20

    :cond_7
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_16

    const/16 v20, 0x0

    return-object v20

    :cond_16
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v22, v0

    move/from16 v21, v20

    :goto_1d
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_180

    aget-object v12, v13, v21

    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_52

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_52

    if-eqz p1, :cond_52

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v12, v2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_52

    return-object v7

    :cond_52
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_9f

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9f

    const/16 v20, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    :goto_73
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9f

    aget-object v18, v19, v20

    if-eqz v18, :cond_9c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9c

    if-eqz p1, :cond_9c

    if-eqz v5, :cond_9c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v12, v2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9c

    return-object v7

    :cond_9c
    add-int/lit8 v20, v20, 0x1

    goto :goto_73

    :cond_9f
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_e4

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v15, :cond_e4

    const/16 v20, 0x0

    array-length v0, v15

    move/from16 v23, v0

    :goto_bc
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_e4

    aget-object v14, v15, v20

    if-eqz v14, :cond_e1

    iget-object v0, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e1

    if-eqz p1, :cond_e1

    if-eqz v5, :cond_e1

    iget-object v0, v14, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v12, v2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e1

    return-object v7

    :cond_e1
    add-int/lit8 v20, v20, 0x1

    goto :goto_bc

    :cond_e4
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_131

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_131

    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    :goto_105
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_131

    aget-object v16, v17, v20

    if-eqz v16, :cond_12e

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12e

    if-eqz p1, :cond_12e

    if-eqz v5, :cond_12e

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v12, v2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12e

    return-object v7

    :cond_12e
    add-int/lit8 v20, v20, 0x1

    goto :goto_105

    :cond_131
    sget-object v20, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_176

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_176

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v23, v0

    :goto_14e
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_176

    aget-object v3, v4, v20

    if-eqz v3, :cond_173

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_173

    if-eqz p1, :cond_173

    if-eqz v5, :cond_173

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v12, v2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16f} :catch_17c

    move-result-object v7

    if-eqz v7, :cond_173

    return-object v7

    :cond_173
    add-int/lit8 v20, v20, 0x1

    goto :goto_14e

    :cond_176
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto/16 :goto_1d

    :catch_17c
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_180
    const/16 v20, 0x0

    return-object v20
.end method

.method private static getHash(Ljava/io/File;)Ljava/lang/String;
    .registers 19

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_2
    const-string/jumbo v14, "SHA-256"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_10} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_10} :catch_90
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_75
    .catchall {:try_start_2 .. :try_end_10} :catchall_b7

    const/16 v14, 0x400

    :try_start_12
    new-array v1, v14, [B

    const/4 v12, 0x0

    :goto_15
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_35

    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_20} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_20} :catch_df
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_e6
    .catchall {:try_start_12 .. :try_end_20} :catchall_d0

    goto :goto_15

    :catch_21
    move-exception v13

    move-object v2, v3

    :goto_23
    :try_start_23
    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "getHash: NoSuchAlgorithmException"

    invoke-static {v14, v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_b7

    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_ab

    :cond_31
    :goto_31
    if-nez v5, :cond_cb

    const/4 v14, 0x0

    return-object v14

    :cond_35
    :try_start_35
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_3e} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3e} :catch_df
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_e6
    .catchall {:try_start_35 .. :try_end_3e} :catchall_d0

    const/4 v7, 0x0

    :goto_3f
    :try_start_3f
    array-length v14, v11

    if-ge v7, v14, :cond_62

    const-string/jumbo v14, "%02X"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    aget-byte v16, v11, v7

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_5f} :catch_da
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_5f} :catch_e2
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5f} :catch_e9
    .catchall {:try_start_3f .. :try_end_5f} :catchall_d3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_62
    if-eqz v3, :cond_67

    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6a

    :cond_67
    :goto_67
    move-object v5, v6

    move-object v2, v3

    goto :goto_31

    :catch_6a
    move-exception v9

    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "close FileInputStream: IOException"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    :catch_75
    move-exception v8

    :goto_76
    :try_start_76
    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "getHash: IOException"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_b7

    if-eqz v2, :cond_31

    :try_start_81
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_31

    :catch_85
    move-exception v9

    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "close FileInputStream: IOException"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :catch_90
    move-exception v4

    :goto_91
    :try_start_91
    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "getHash: FileNotFoundException"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_b7

    if-eqz v2, :cond_31

    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_31

    :catch_a0
    move-exception v9

    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "close FileInputStream: IOException"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :catch_ab
    move-exception v9

    const-string/jumbo v14, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v15, "close FileInputStream: IOException"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    :catchall_b7
    move-exception v14

    :goto_b8
    if-eqz v2, :cond_bd

    :try_start_ba
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    :cond_bd
    :goto_bd
    throw v14

    :catch_be
    move-exception v9

    const-string/jumbo v15, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v16, "close FileInputStream: IOException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bd

    :cond_cb
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :catchall_d0
    move-exception v14

    move-object v2, v3

    goto :goto_b8

    :catchall_d3
    move-exception v14

    move-object v5, v6

    move-object v2, v3

    goto :goto_b8

    :catch_d7
    move-exception v13

    goto/16 :goto_23

    :catch_da
    move-exception v13

    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_23

    :catch_df
    move-exception v4

    move-object v2, v3

    goto :goto_91

    :catch_e2
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    goto :goto_91

    :catch_e6
    move-exception v8

    move-object v2, v3

    goto :goto_76

    :catch_e9
    move-exception v8

    move-object v5, v6

    move-object v2, v3

    goto :goto_76
.end method

.method private static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v2, p0, :cond_9

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_29
    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_30

    monitor-exit v3

    return-object v2

    :cond_2d
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getHashFromCacheBasedOnUid(I)Ljava/lang/String;
    .registers 5

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v2, p0, :cond_9

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_20

    monitor-exit v3

    return-object v2

    :cond_1d
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :catchall_20
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_36

    const-string/jumbo v6, "null"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_36

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2f

    return-object v8

    :cond_2f
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    return-object v3

    :cond_36
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    return-object v3

    :cond_3d
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_44

    move-result-object v4

    if-eqz v4, :cond_4e

    return-object v4

    :catch_44
    move-exception v5

    const-string/jumbo v6, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v7, "getPackageHash: Exception"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    return-object v8
.end method

.method private static getPackageManager()Lcom/android/server/pm/PackageManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private static insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "insertHashIntoCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v1

    :try_start_10
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_64

    const-string/jumbo v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DataDelivery hash cache insertion uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pacName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " procName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " trunProcName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_10 .. :try_end_69} :catchall_6b

    monitor-exit v1

    return-void

    :catchall_6b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDataRecipientPresent(Ljava/lang/String;I)I
    .registers 9

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_42

    const-string/jumbo v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataRecipientPresent: found recipient:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move v2, v0

    :cond_43
    return v2

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    return-void
.end method

.method protected static updateHashCache(ILjava/lang/String;)V
    .registers 8

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v3, "updateHashCache Called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3

    :try_start_10
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v2, p0, :cond_16

    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_82

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DataDelivery hash cache deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_85
    .catchall {:try_start_10 .. :try_end_85} :catchall_86

    goto :goto_16

    :catchall_86
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_89
    monitor-exit v3

    return-void
.end method

.method protected static updateHashCacheForUser(I)V
    .registers 7

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v3, "updateHashCacheForUser Called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v3

    :try_start_10
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    if-ne v2, p0, :cond_16

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DataDelivery hash cache user deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_7d
    .catchall {:try_start_10 .. :try_end_7d} :catchall_7e

    goto :goto_16

    :catchall_7e
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_81
    monitor-exit v3

    return-void
.end method

.method private validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    return v1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public accumulateData(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->sendMessageToHandler(IIILjava/lang/Object;)V

    return v1
.end method

.method public addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z

    move-result v1

    if-nez v1, :cond_28

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_28

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adding recipient failed for recipient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adding recipient for data collection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4d
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_80

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_80

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "added recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_4d .. :try_end_80} :catchall_82

    :cond_80
    monitor-exit v2

    return-void

    :catchall_82
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public deliverData(Ljava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_a
    return v10

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_25

    :cond_17
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v8, :cond_24

    const-string/jumbo v8, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v9, "deliverData: No data delivery herlper entries."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v10

    :cond_25
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    :try_start_35
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_71

    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v8, :cond_29

    const-string/jumbo v8, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deliverData: service connection is null for entry:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_65} :catch_81

    goto :goto_29

    :catch_66
    move-exception v6

    const-string/jumbo v8, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v9, "deliverData: RemoteException "

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_71
    :try_start_71
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_29

    invoke-interface {v7, v5, v0}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_80} :catch_66
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_80} :catch_81

    goto :goto_29

    :catch_81
    move-exception v1

    const-string/jumbo v8, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v9, "deliverData: Exception "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_8c
    return v11
.end method

.method protected getRecipientList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initializeHandlerThread()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DataDeliveryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    return-void
.end method

.method public removeDataRecipientsForPackage(Ljava/lang/String;I)V
    .registers 11

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_b

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeDataRecipientsForPackage: removing recipient for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5d

    goto :goto_b

    :catchall_5d
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_60
    monitor-exit v5

    return-void
.end method

.method public removeNAPDataRecipient(Ljava/lang/String;I)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_36

    move-result v0

    if-gez v0, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNAPDataRecipient: removing recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public terminateHandlerThread()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_9
    return-void
.end method
