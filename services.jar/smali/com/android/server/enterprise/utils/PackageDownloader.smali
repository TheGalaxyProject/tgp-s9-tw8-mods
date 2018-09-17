.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/PackageDownloader$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageDownloader"

.field private static UNSPECIFIED:I

.field private static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog$Builder;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserAcceptDataNetwork:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDialog:Landroid/app/AlertDialog$Builder;

    iput-boolean v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mIsUserAcceptDataNetwork:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->DEBUG:Z

    new-instance v1, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private cancelAllDownload()V
    .registers 11

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_62

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_62

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_62

    new-array v6, v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    const-string/jumbo v5, ""

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v8

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v7, :cond_5d

    aget-object v5, v6, v4

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_55

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_55
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_5d
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    :cond_62
    return-void
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .registers 22

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v16, v0

    new-instance v17, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v17 .. v17}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v12, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_76

    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_76

    const-string/jumbo v16, "status"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v16, "local_uri"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_76

    new-instance v9, Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_75} :catch_155
    .catchall {:try_start_39 .. :try_end_75} :catchall_16a

    move-result-object v7

    :cond_76
    if-nez v7, :cond_80

    const/16 v16, 0x0

    if-eqz v2, :cond_7f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7f
    return v16

    :cond_80
    :try_start_80
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    :cond_a2
    if-eqz v10, :cond_ac

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_ac

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_ac
    if-nez v11, :cond_d2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10408bf

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_c7} :catch_155
    .catchall {:try_start_80 .. :try_end_c7} :catchall_16a

    :cond_c7
    :goto_c7
    if-eqz v2, :cond_cc

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_cc
    :goto_cc
    if-nez v14, :cond_d1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_d1
    return v14

    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v8

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v16

    if-eqz v16, :cond_125

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_110

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_110
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_110} :catch_155
    .catchall {:try_start_d2 .. :try_end_110} :catchall_16a

    :cond_110
    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_c7

    if-eqz v7, :cond_c7

    :try_start_118
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11d} :catch_11f
    .catch Ljava/lang/SecurityException; {:try_start_118 .. :try_end_11d} :catch_155
    .catchall {:try_start_118 .. :try_end_11d} :catchall_16a

    const/4 v14, 0x1

    goto :goto_c7

    :catch_11f
    move-exception v4

    :try_start_120
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_c7

    :cond_125
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v16

    if-eqz v16, :cond_152

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_138
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_138} :catch_155
    .catchall {:try_start_120 .. :try_end_138} :catchall_16a

    move-result v16

    if-eqz v16, :cond_c7

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_c7

    if-eqz v7, :cond_c7

    :try_start_143
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_148} :catch_14b
    .catch Ljava/lang/SecurityException; {:try_start_143 .. :try_end_148} :catch_155
    .catchall {:try_start_143 .. :try_end_148} :catchall_16a

    const/4 v14, 0x1

    goto/16 :goto_c7

    :catch_14b
    move-exception v4

    :try_start_14c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14f
    .catch Ljava/lang/SecurityException; {:try_start_14c .. :try_end_14f} :catch_155
    .catchall {:try_start_14c .. :try_end_14f} :catchall_16a

    const/4 v14, 0x0

    goto/16 :goto_c7

    :cond_152
    const/4 v14, 0x0

    goto/16 :goto_c7

    :catch_155
    move-exception v5

    :try_start_156
    const-string/jumbo v16, "PackageDownloader"

    const-string/jumbo v17, "failed to checkPackage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_163
    .catchall {:try_start_156 .. :try_end_163} :catchall_16a

    if-eqz v2, :cond_cc

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_cc

    :catchall_16a
    move-exception v16

    if-eqz v2, :cond_170

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_170
    throw v16
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    if-eqz p1, :cond_48

    if-eqz p2, :cond_48

    :try_start_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v5, :cond_48

    if-eqz v4, :cond_48

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v5, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_48

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method private getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 3

    const-string/jumbo v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object v0
.end method

.method private handleDownloadComplete()V
    .registers 11

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v8, :cond_58

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_58

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_58

    new-array v6, v7, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    const-string/jumbo v5, ""

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v8

    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v7, :cond_58

    aget-object v5, v6, v4

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_55

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->checkPackage(Ljava/lang/String;)Z

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_58
    return-void
.end method

.method private handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_2d

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    :cond_1e
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private handleNetworkState()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v1, 0x10408be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_16
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->cancelAllDownload()V

    :cond_19
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$2;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    :cond_22
    return-void
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v4

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    const/4 v3, 0x0

    return v3
.end method

.method private isConnectionAvailable(I)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :cond_11
    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :cond_21
    return v1
.end method

.method private isNetworkConnectionAvailable()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v0

    if-nez v1, :cond_22

    move v2, v0

    :goto_e
    if-nez v2, :cond_21

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v4, 0x10408c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private postDownload(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_44

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_3f

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    :cond_3f
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    :goto_44
    return-void

    :cond_45
    const-string/jumbo v2, "PackageDownloader"

    const-string/jumbo v3, "something\'s wrong...size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
