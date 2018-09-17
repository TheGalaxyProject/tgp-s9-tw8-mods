.class public Lcom/samsung/android/friends/executable/ExecSystemDataMgr;
.super Ljava/lang/Object;
.source "ExecSystemDataMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ExecSystemDataMgr"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static changeFilePermission(Ljava/io/File;)V
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "ExecSystemDataMgr"

    const-string/jumbo v2, "setReadable() failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_18
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string/jumbo v1, "ExecSystemDataMgr"

    const-string/jumbo v2, "setWritable() failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2c
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v1

    if-nez v1, :cond_40

    const-string/jumbo v1, "ExecSystemDataMgr"

    const-string/jumbo v2, "setExecutable() failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    const-string/jumbo v1, "ExecSystemDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to change a permission of file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method private copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z
    .registers 22

    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "copyPackageAssetsToSysDir"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez p1, :cond_15

    const/4 v15, 0x0

    return v15

    :cond_15
    const-string/jumbo v15, "paramStr0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "paramList0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2f

    if-nez v4, :cond_42

    :cond_2f
    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "arguments wrong!"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v15, 0x0

    return v15

    :cond_42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_2f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_65

    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "getPackageManager() failed"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v15, 0x0

    return v15

    :cond_65
    const/16 v15, 0x80

    :try_start_67
    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_80

    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "getApplicationInfo() failed"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v15, 0x0

    return v15

    :cond_80
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v15, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    if-nez v13, :cond_9d

    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "getResourcesForApplication() failed"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v15, 0x0

    return v15

    :cond_9d
    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-nez v3, :cond_b6

    const-string/jumbo v15, "ExecSystemDataMgr"

    const-string/jumbo v16, "getAssets() failed"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v15, 0x0

    return v15

    :cond_b6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ba
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v15, ";"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    aget-object v14, v10, v15

    const/4 v15, 0x1

    aget-object v5, v10, v15

    const-string/jumbo v15, "ExecSystemDataMgr"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v7, v0}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_e3} :catch_122

    const/16 v16, 0x0

    const/4 v9, 0x0

    :try_start_e6
    invoke-virtual {v3, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->createFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_11a

    const-string/jumbo v15, "ExecSystemDataMgr"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to create "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_11a} :catch_12a
    .catchall {:try_start_e6 .. :try_end_11a} :catchall_14e

    :cond_11a
    if-eqz v9, :cond_11f

    :try_start_11c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_11f} :catch_128

    :cond_11f
    :goto_11f
    if-eqz v16, :cond_ba

    :try_start_121
    throw v16
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_122} :catch_122

    :catch_122
    move-exception v6

    invoke-static {v6}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 v15, 0x0

    return v15

    :catch_128
    move-exception v16

    goto :goto_11f

    :catch_12a
    move-exception v15

    :try_start_12b
    throw v15
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12c

    :catchall_12c
    move-exception v16

    move-object/from16 v19, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    :goto_133
    if-eqz v9, :cond_138

    :try_start_135
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_135 .. :try_end_138} :catch_13b

    :cond_138
    :goto_138
    if-eqz v16, :cond_14b

    :try_start_13a
    throw v16

    :catch_13b
    move-exception v17

    if-nez v16, :cond_141

    move-object/from16 v16, v17

    goto :goto_138

    :cond_141
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_138

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_138

    :cond_14b
    throw v15
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_14c} :catch_122

    :cond_14c
    const/4 v15, 0x1

    return v15

    :catchall_14e
    move-exception v15

    goto :goto_133
.end method

.method private createFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-string/jumbo v7, "ExecSystemDataMgr"

    const-string/jumbo v9, "createFile"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_14
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_84
    .catchall {:try_start_14 .. :try_end_19} :catchall_7f

    const/16 v7, 0x400

    :try_start_1b
    new-array v0, v7, [B

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_48

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_81

    goto :goto_1d

    :catch_29
    move-exception v7

    move-object v4, v5

    :goto_2b
    :try_start_2b
    throw v7
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_30
    if-eqz v4, :cond_35

    :try_start_32
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_56
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_38
    .catchall {:try_start_32 .. :try_end_35} :catchall_61

    :cond_35
    :goto_35
    if-eqz v8, :cond_6e

    :try_start_37
    throw v8
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_61

    :catch_38
    move-exception v2

    :goto_39
    :try_start_39
    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_61

    if-eqz v6, :cond_47

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_47
    :goto_47
    return v6

    :cond_48
    const/4 v6, 0x1

    if-eqz v5, :cond_4e

    :try_start_4b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7c

    :cond_4e
    :goto_4e
    if-eqz v8, :cond_6f

    :try_start_50
    throw v8
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_7c

    :catch_51
    move-exception v2

    move-object v4, v5

    goto :goto_39

    :catch_54
    move-exception v8

    goto :goto_4e

    :catch_56
    move-exception v9

    if-nez v8, :cond_5b

    move-object v8, v9

    goto :goto_35

    :cond_5b
    if-eq v8, v9, :cond_35

    :try_start_5d
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_38
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_35

    :catchall_61
    move-exception v7

    :goto_62
    if-eqz v6, :cond_6d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_6d
    throw v7

    :cond_6e
    :try_start_6e
    throw v7
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_38
    .catchall {:try_start_6e .. :try_end_6f} :catchall_61

    :cond_6f
    if-eqz v6, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-static {v3}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_7a
    move-object v4, v5

    goto :goto_47

    :catchall_7c
    move-exception v7

    move-object v4, v5

    goto :goto_62

    :catchall_7f
    move-exception v7

    goto :goto_30

    :catchall_81
    move-exception v7

    move-object v4, v5

    goto :goto_30

    :catch_84
    move-exception v7

    goto :goto_2b
.end method

.method private deleteFiles(Landroid/os/Bundle;)Z
    .registers 15

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "paramStrA0"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_31

    array-length v5, v4

    :goto_d
    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v9, "deleteFiles %d"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-lez v5, :cond_c5

    array-length v9, v4

    move v8, v7

    :goto_22
    if-ge v8, v9, :cond_c5

    aget-object v0, v4, v8

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_33

    :cond_2e
    :goto_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_31
    const/4 v5, -0x1

    goto :goto_d

    :cond_33
    const-string/jumbo v10, "/data/system/friends"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2e

    :try_start_3e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_70

    const-string/jumbo v10, "ExecSystemDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wrong filePath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_6a} :catch_6b

    goto :goto_2e

    :catch_6b
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2e

    :cond_70
    :try_start_70
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_98

    const-string/jumbo v10, "ExecSystemDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "is a directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2e

    :cond_98
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_c1

    const-string/jumbo v10, "ExecSystemDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "failed to delete: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_bf} :catch_6b

    goto/16 :goto_2e

    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2e

    :cond_c5
    if-eqz v1, :cond_ca

    if-ne v1, v5, :cond_ca

    :goto_c9
    return v6

    :cond_ca
    move v6, v7

    goto :goto_c9
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_23

    array-length v4, v2

    if-lez v4, :cond_23

    array-length v4, v2

    :goto_11
    if-ge v3, v4, :cond_23

    aget-object v0, v2, v3

    if-nez v0, :cond_1a

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1a
    invoke-direct {p0, v0}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_17

    :catch_1e
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    :try_start_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "ExecSystemDataMgr"

    const-string/jumbo v4, "failed to delete a file or a directory!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_35} :catch_1e

    goto :goto_22
.end method

.method private deleteSubDirs(Landroid/os/Bundle;)Z
    .registers 14

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v9, "deleteSubDirs"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v8, "paramStr0"

    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "paramStr1"

    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2d

    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v9, "data is wrong!"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7

    :cond_2d
    const/4 v5, 0x0

    :try_start_2e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_46

    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v9, "target is not a directory!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7

    :cond_46
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6a

    array-length v8, v4

    if-lez v8, :cond_6a

    array-length v8, v4

    :goto_50
    if-ge v7, v8, :cond_6a

    aget-object v0, v4, v7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_67

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_67

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_67} :catch_6c

    :cond_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_6a
    const/4 v5, 0x1

    :goto_6b
    return v5

    :catch_6c
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6b
.end method

.method private makeDir(Landroid/os/Bundle;)Z
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v4, "ExecSystemDataMgr"

    const-string/jumbo v5, "makeDir"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v4, "paramStr0"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "ExecSystemDataMgr"

    const-string/jumbo v5, "data is wrong!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7

    :cond_26
    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_67

    const-string/jumbo v4, "ExecSystemDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to create a path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5b} :catch_74
    .catchall {:try_start_2c .. :try_end_5b} :catchall_84

    if-eqz v2, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_66
    return v7

    :cond_67
    const/4 v2, 0x1

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_73
    :goto_73
    return v2

    :catch_74
    move-exception v0

    :try_start_75
    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_84

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_73

    :catchall_84
    move-exception v4

    if-eqz v2, :cond_90

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_90
    throw v4
.end method

.method private readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v10, "readStringFromFile"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "paramStr0"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    const-string/jumbo v8, "ExecSystemDataMgr"

    const-string/jumbo v10, "data is wrong!"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v9

    :cond_27
    const/4 v3, 0x0

    :try_start_28
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_32} :catch_8e
    .catchall {:try_start_28 .. :try_end_32} :catchall_89

    const/16 v8, 0x400

    :try_start_34
    new-array v0, v8, [C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3b
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_5b

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_46} :catch_47
    .catchall {:try_start_34 .. :try_end_46} :catchall_8b

    goto :goto_3b

    :catch_47
    move-exception v8

    move-object v3, v4

    :goto_49
    :try_start_49
    throw v8
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_4e
    if-eqz v3, :cond_53

    :try_start_50
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_7d

    :cond_53
    :goto_53
    if-eqz v9, :cond_88

    :try_start_55
    throw v9
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    move-exception v2

    :goto_57
    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_5a
    return-object v5

    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v8

    const-string/jumbo v10, "paramStr0"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6d} :catch_47
    .catchall {:try_start_5b .. :try_end_6d} :catchall_8b

    move-result-object v5

    if-eqz v4, :cond_73

    :try_start_70
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_79

    :cond_73
    :goto_73
    if-eqz v9, :cond_7b

    :try_start_75
    throw v9
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_76} :catch_76

    :catch_76
    move-exception v2

    move-object v3, v4

    goto :goto_57

    :catch_79
    move-exception v9

    goto :goto_73

    :cond_7b
    move-object v3, v4

    goto :goto_5a

    :catch_7d
    move-exception v10

    if-nez v9, :cond_82

    move-object v9, v10

    goto :goto_53

    :cond_82
    if-eq v9, v10, :cond_53

    :try_start_84
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_53

    :cond_88
    throw v8
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_89} :catch_56

    :catchall_89
    move-exception v8

    goto :goto_4e

    :catchall_8b
    move-exception v8

    move-object v3, v4

    goto :goto_4e

    :catch_8e
    move-exception v8

    goto :goto_49
.end method

.method private writeStringToFile(Landroid/os/Bundle;)Z
    .registers 15

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-string/jumbo v7, "ExecSystemDataMgr"

    const-string/jumbo v9, "writeStringToFile"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v7, "paramStr0"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "paramStr1"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_39

    :cond_27
    const-string/jumbo v7, "ExecSystemDataMgr"

    const-string/jumbo v8, "wrong param %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v11

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v11

    :cond_39
    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_40
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4a} :catch_6c
    .catchall {:try_start_40 .. :try_end_4a} :catchall_a5

    :try_start_4a
    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_50} :catch_aa
    .catchall {:try_start_4a .. :try_end_50} :catchall_a7

    const/4 v5, 0x1

    if-eqz v4, :cond_56

    :try_start_53
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_6a
    .catchall {:try_start_53 .. :try_end_56} :catchall_a2

    :cond_56
    :goto_56
    if-eqz v8, :cond_95

    :try_start_58
    throw v8
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_59} :catch_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_a2

    :catch_59
    move-exception v1

    move-object v3, v4

    :goto_5b
    :try_start_5b
    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_87

    if-eqz v5, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-static {v2}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_69
    :goto_69
    return v5

    :catch_6a
    move-exception v8

    goto :goto_56

    :catch_6c
    move-exception v7

    :goto_6d
    :try_start_6d
    throw v7
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_72
    if-eqz v3, :cond_77

    :try_start_74
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_7c
    .catchall {:try_start_74 .. :try_end_77} :catchall_87

    :cond_77
    :goto_77
    if-eqz v8, :cond_94

    :try_start_79
    throw v8

    :catch_7a
    move-exception v1

    goto :goto_5b

    :catch_7c
    move-exception v9

    if-nez v8, :cond_81

    move-object v8, v9

    goto :goto_77

    :cond_81
    if-eq v8, v9, :cond_77

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_86} :catch_7a
    .catchall {:try_start_79 .. :try_end_86} :catchall_87

    goto :goto_77

    :catchall_87
    move-exception v7

    :goto_88
    if-eqz v5, :cond_93

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-static {v2}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_93
    throw v7

    :cond_94
    :try_start_94
    throw v7
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_95} :catch_7a
    .catchall {:try_start_94 .. :try_end_95} :catchall_87

    :cond_95
    if-eqz v5, :cond_a0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-static {v2}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_a0
    move-object v3, v4

    goto :goto_69

    :catchall_a2
    move-exception v7

    move-object v3, v4

    goto :goto_88

    :catchall_a5
    move-exception v7

    goto :goto_72

    :catchall_a7
    move-exception v7

    move-object v3, v4

    goto :goto_72

    :catch_aa
    move-exception v7

    move-object v3, v4

    goto :goto_6d
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "ActionSystemDataMgr"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_12

    packed-switch p3, :pswitch_data_46

    :cond_12
    :pswitch_12
    return-object v3

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->makeDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteSubDirs(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_25
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->writeStringToFile(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_37
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;->deleteFiles(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x12000b
        :pswitch_13
        :pswitch_25
        :pswitch_1c
        :pswitch_2e
        :pswitch_37
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_3c
    .end packed-switch
.end method
