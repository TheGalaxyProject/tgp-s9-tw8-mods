.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method private hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method private reportCachedValues(Ljava/io/PrintWriter;)V
    .registers 8

    :try_start_0
    const-string/jumbo v3, "/data/system/diskstats_cache.json"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "App Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "appSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "App Cache Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "cacheSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Photos Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "photosSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Videos Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "videosSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Audio Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "audioSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Downloads Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "downloadsSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "System Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "systemSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Other Size: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "otherSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v3, "Package Names: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "packageNames"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v3, "App Sizes: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "appSizes"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v3, "Cache Sizes: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "cacheSizes"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_bc} :catch_bd
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_bc} :catch_bd

    :goto_bc
    return-void

    :catch_bd
    move-exception v0

    const-string/jumbo v3, "DiskStatsService"

    const-string/jumbo v4, "exception reading diskstats cache file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc
.end method

.method private reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 24

    :try_start_0
    const-string/jumbo v18, "/data/system/diskstats_cache.json"

    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v18, 0x11100000006L

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-string/jumbo v18, "appSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000001L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "cacheSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000002L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "photosSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000003L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "videosSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000004L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "audioSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000005L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "downloadsSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000006L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "systemSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000007L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "otherSize"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide v20, 0x10400000008L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v18, "packageNames"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const-string/jumbo v18, "appSizes"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string/jumbo v18, "cacheSizes"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_150

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_150

    const/4 v11, 0x0

    :goto_101
    if-ge v11, v14, :cond_159

    const-wide v18, 0x21100000009L

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v16

    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-wide v20, 0x10e00000001L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x10400000002L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v18

    const-wide v20, 0x10400000003L

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_101

    :cond_150
    const-string/jumbo v18, "DiskStatsService"

    const-string/jumbo v19, "Sizes of packageNamesArray, appSizesArray and cacheSizesArray are not the same"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_159
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15e} :catch_15f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_15e} :catch_15f

    :goto_15e
    return-void

    :catch_15f
    move-exception v10

    const-string/jumbo v18, "DiskStatsService"

    const-string/jumbo v19, "exception reading diskstats cache file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15e
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .registers 22

    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_24

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_58

    :cond_24
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid stat: bsize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " avail="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " total="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :catch_54
    move-exception v6

    if-eqz p4, :cond_da

    :goto_57
    return-void

    :cond_58
    if-eqz p4, :cond_95

    const-wide v12, 0x21100000004L

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v12, 0x11000000001L

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    mul-long v12, v2, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide v14, 0x10400000002L

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    mul-long v12, v10, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide v14, 0x10400000003L

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_94
    return-void

    :cond_95
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "-Free: "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v12, v2, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v12, "K / "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v12, v10, v4

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v12, "K total = "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v2

    div-long/2addr v12, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v12, "% free"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d9} :catch_54

    goto :goto_94

    :cond_da
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "-Error: "

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_57
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DiskStatsService"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    const/16 v2, 0x200

    new-array v0, v2, [B

    move-object/from16 v19, v0

    const/16 v18, 0x0

    :goto_18
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_27

    move/from16 v0, v18

    int-to-byte v2, v0

    aput-byte v2, v19, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_18

    :cond_27
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system/perftest.tmp"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    :try_start_3c
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_45} :catch_e5
    .catchall {:try_start_3c .. :try_end_45} :catchall_f1

    :try_start_45
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_16a
    .catchall {:try_start_45 .. :try_end_4c} :catchall_166

    if-eqz v17, :cond_51

    :try_start_4e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_e2

    :cond_51
    :goto_51
    move-object/from16 v16, v17

    :cond_53
    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    :cond_60
    const-string/jumbo v2, "--proto"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    const/4 v6, 0x0

    if-eqz v20, :cond_108

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 p2, 0x0

    if-eqz v14, :cond_fa

    const/4 v2, 0x1

    :goto_7a
    const-wide v4, 0x10d00000001L

    invoke-virtual {v6, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v14, :cond_fd

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v4, 0x10e00000002L

    invoke-virtual {v6, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_90
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Data"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Cache"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v2, "/system"

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "System"

    const/4 v7, 0x2

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v15

    if-eqz v15, :cond_136

    const/4 v12, 0x0

    :goto_c8
    if-eqz v20, :cond_151

    if-eqz v15, :cond_13b

    const-wide v2, 0x11000000005L

    const/4 v4, 0x3

    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d5
    :goto_d5
    if-eqz v20, :cond_15d

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    :goto_dc
    if-eqz v20, :cond_e1

    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_e1
    return-void

    :catch_e2
    move-exception v13

    goto/16 :goto_51

    :catch_e5
    move-exception v13

    :goto_e6
    move-object v14, v13

    if-eqz v16, :cond_53

    :try_start_e9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ee

    goto/16 :goto_53

    :catch_ee
    move-exception v13

    goto/16 :goto_53

    :catchall_f1
    move-exception v2

    :goto_f2
    if-eqz v16, :cond_f7

    :try_start_f4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    :cond_f7
    :goto_f7
    throw v2

    :catch_f8
    move-exception v13

    goto :goto_f7

    :cond_fa
    const/4 v2, 0x0

    goto/16 :goto_7a

    :cond_fd
    sub-long v2, v8, v10

    const-wide v4, 0x10300000003L

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_90

    :cond_108
    if-eqz v14, :cond_11d

    const-string/jumbo v2, "Test-Error: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_11d
    const-string/jumbo v2, "Latency: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v2, v8, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v2, "ms [512B Data Write]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_136
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v12

    goto :goto_c8

    :cond_13b
    if-eqz v12, :cond_147

    const-wide v2, 0x11000000005L

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d5

    :cond_147
    const-wide v2, 0x11000000005L

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d5

    :cond_151
    if-eqz v15, :cond_d5

    const-string/jumbo v2, "File-based Encryption: true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_d5

    :cond_15d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    goto/16 :goto_dc

    :catchall_166
    move-exception v2

    move-object/from16 v16, v17

    goto :goto_f2

    :catch_16a
    move-exception v13

    move-object/from16 v16, v17

    goto/16 :goto_e6
.end method
