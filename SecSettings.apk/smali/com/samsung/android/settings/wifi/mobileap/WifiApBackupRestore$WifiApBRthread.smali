.class Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApBRthread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHotspotEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x8

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1c

    const-string/jumbo v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model name.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private loadOtherConf(Ljava/lang/String;)Z
    .registers 30

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x1

    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_e} :catch_2eb
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_2f8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_305
    .catchall {:try_start_7 .. :try_end_e} :catchall_2c9

    :try_start_e
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1e} :catch_2ee
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1e} :catch_2fb
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_308
    .catchall {:try_start_e .. :try_end_1e} :catchall_2dc

    const/4 v14, 0x0

    :try_start_1f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_2f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_24} :catch_2ff
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_30c
    .catchall {:try_start_1f .. :try_end_24} :catchall_2df

    const/4 v4, 0x1

    :try_start_25
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v23

    :goto_29
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2ab

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_4f
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v4, v0, :cond_ec

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v5

    add-int v25, v5, v3

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4c

    const-string/jumbo v25, "WifiApBackupRestore"

    const-string/jumbo v26, "Exceeds allowed List Size of 10. Delete old devices in Restore DUTB"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v25, 0xa

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v13, :cond_96

    :goto_81
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_96

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    :cond_96
    const/4 v12, 0x0

    :goto_97
    if-eqz v5, :cond_cd

    aget-object v18, v6, v12

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c8

    const-string/jumbo v25, "WifiApBackupRestore"

    const-string/jumbo v26, "Error in removing WhiteList!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_b4} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_b4} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_b4} :catch_272
    .catchall {:try_start_25 .. :try_end_b4} :catchall_2e4

    const/16 v25, 0x0

    if-eqz v17, :cond_bb

    :try_start_b8
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    :cond_bb
    if-eqz v11, :cond_c0

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c1

    :cond_c0
    :goto_c0
    return v25

    :catch_c1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_c0

    :cond_c8
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    :cond_cd
    if-eqz v5, :cond_4c

    :try_start_cf
    const-string/jumbo v25, "WifiApBackupRestore"

    const-string/jumbo v26, "unknown error in removing WifiApWhitelist"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/io/FileNotFoundException; {:try_start_cf .. :try_end_d8} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d8} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d8} :catch_272
    .catchall {:try_start_cf .. :try_end_d8} :catchall_2e4

    const/16 v25, 0x0

    if-eqz v17, :cond_df

    :try_start_dc
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    :cond_df
    if-eqz v11, :cond_e4

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e4} :catch_e5

    :cond_e4
    :goto_e4
    return v25

    :catch_e5
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_e4

    :cond_ec
    :try_start_ec
    const-string/jumbo v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_137

    const-string/jumbo v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v25, 0x1

    aget-object v25, v15, v25

    const/16 v26, 0x0

    aget-object v26, v15, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4c

    const-string/jumbo v25, "WifiApBackupRestore"

    const-string/jumbo v26, "Whitelist is NOTMAC. QUIT!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_123} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_123} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_123} :catch_272
    .catchall {:try_start_ec .. :try_end_123} :catchall_2e4

    const/16 v25, 0x0

    if-eqz v17, :cond_12a

    :try_start_127
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    :cond_12a
    if-eqz v11, :cond_12f

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12f} :catch_130

    :cond_12f
    :goto_12f
    return v25

    :catch_130
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_12f

    :cond_137
    :try_start_137
    const-string/jumbo v25, "PMFChecked"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1a5

    const/16 v25, 0x3d

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_4c

    add-int/lit8 v25, v12, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v25, "WifiApBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "restore pmf:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPMFChecked(ILandroid/content/Context;)V
    :try_end_18d
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_18d} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_137 .. :try_end_18d} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_18d} :catch_272
    .catchall {:try_start_137 .. :try_end_18d} :catchall_2e4

    goto/16 :goto_4c

    :catch_18f
    move-exception v7

    move-object/from16 v16, v17

    move-object/from16 v20, v21

    move-object v10, v11

    :goto_195
    :try_start_195
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_2c9

    const/16 v19, 0x0

    if-eqz v16, :cond_19f

    :try_start_19c
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_19f
    if-eqz v10, :cond_1a4

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1a4} :catch_2c3

    :cond_1a4
    :goto_1a4
    return v19

    :cond_1a5
    :try_start_1a5
    const-string/jumbo v25, "PSChecked"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_21a

    const/16 v25, 0x3d

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_4c

    add-int/lit8 v25, v12, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v25, "WifiApBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "restore PSmode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPSChecked(ILandroid/content/Context;)V
    :try_end_1fb
    .catch Ljava/io/FileNotFoundException; {:try_start_1a5 .. :try_end_1fb} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a5 .. :try_end_1fb} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1fb} :catch_272
    .catchall {:try_start_1a5 .. :try_end_1fb} :catchall_2e4

    goto/16 :goto_4c

    :catch_1fd
    move-exception v9

    move-object/from16 v16, v17

    move-object/from16 v20, v21

    move-object v10, v11

    :goto_203
    :try_start_203
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_2c9

    const/16 v19, 0x0

    if-eqz v16, :cond_20d

    :try_start_20a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_20d
    if-eqz v10, :cond_1a4

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_212} :catch_213

    goto :goto_1a4

    :catch_213
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_217
    const/16 v19, 0x0

    goto :goto_1a4

    :cond_21a
    :try_start_21a
    const-string/jumbo v25, "WifiSharing"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_28e

    const/16 v25, 0x3d

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_4c

    add-int/lit8 v25, v12, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v25, "WifiApBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "restore WifiSharing:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setWIFISharing(ILandroid/content/Context;)V
    :try_end_270
    .catch Ljava/io/FileNotFoundException; {:try_start_21a .. :try_end_270} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_21a .. :try_end_270} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_270} :catch_272
    .catchall {:try_start_21a .. :try_end_270} :catchall_2e4

    goto/16 :goto_4c

    :catch_272
    move-exception v8

    move-object/from16 v16, v17

    move-object/from16 v20, v21

    move-object v10, v11

    :goto_278
    :try_start_278
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_2c9

    const/16 v19, 0x0

    if-eqz v16, :cond_282

    :try_start_27f
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_282
    if-eqz v10, :cond_1a4

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_27f .. :try_end_287} :catch_289

    goto/16 :goto_1a4

    :catch_289
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_217

    :cond_28e
    :try_start_28e
    const-string/jumbo v25, "WifiApBackupRestore"

    const-string/jumbo v26, "Invlaid format. RETURN FALSE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_297
    .catch Ljava/io/FileNotFoundException; {:try_start_28e .. :try_end_297} :catch_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_28e .. :try_end_297} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_297} :catch_272
    .catchall {:try_start_28e .. :try_end_297} :catchall_2e4

    const/16 v25, 0x0

    if-eqz v17, :cond_29e

    :try_start_29b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    :cond_29e
    if-eqz v11, :cond_2a3

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2a3
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_2a3} :catch_2a4

    :cond_2a3
    :goto_2a3
    return v25

    :catch_2a4
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_2a3

    :cond_2ab
    if-eqz v17, :cond_2b0

    :try_start_2ad
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    :cond_2b0
    if-eqz v11, :cond_2b5

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b5} :catch_2bc

    :cond_2b5
    :goto_2b5
    move-object/from16 v16, v17

    move-object/from16 v20, v21

    move-object v10, v11

    goto/16 :goto_1a4

    :catch_2bc
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_2b5

    :catch_2c3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_217

    :catchall_2c9
    move-exception v25

    :goto_2ca
    if-eqz v16, :cond_2cf

    :try_start_2cc
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_2cf
    if-eqz v10, :cond_2d4

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2d4} :catch_2d5

    :cond_2d4
    :goto_2d4
    throw v25

    :catch_2d5
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    goto :goto_2d4

    :catchall_2dc
    move-exception v25

    move-object v10, v11

    goto :goto_2ca

    :catchall_2df
    move-exception v25

    move-object/from16 v16, v17

    move-object v10, v11

    goto :goto_2ca

    :catchall_2e4
    move-exception v25

    move-object/from16 v16, v17

    move-object/from16 v20, v21

    move-object v10, v11

    goto :goto_2ca

    :catch_2eb
    move-exception v7

    goto/16 :goto_195

    :catch_2ee
    move-exception v7

    move-object v10, v11

    goto/16 :goto_195

    :catch_2f2
    move-exception v7

    move-object/from16 v16, v17

    move-object v10, v11

    goto/16 :goto_195

    :catch_2f8
    move-exception v9

    goto/16 :goto_203

    :catch_2fb
    move-exception v9

    move-object v10, v11

    goto/16 :goto_203

    :catch_2ff
    move-exception v9

    move-object/from16 v16, v17

    move-object v10, v11

    goto/16 :goto_203

    :catch_305
    move-exception v8

    goto/16 :goto_278

    :catch_308
    move-exception v8

    move-object v10, v11

    goto/16 :goto_278

    :catch_30c
    move-exception v8

    move-object/from16 v16, v17

    move-object v10, v11

    goto/16 :goto_278
.end method

.method private loadWifiApConfig(Ljava/lang/String;)Z
    .registers 16

    const/16 v13, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x3

    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "loadWifiApConfig.."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_11
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2c} :catch_191
    .catchall {:try_start_11 .. :try_end_2c} :catchall_18f

    :try_start_2c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    iput-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-le v9, v13, :cond_54

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_54

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_54
    if-ne v8, v12, :cond_5d

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ge v9, v13, :cond_fc

    const/4 v9, 0x0

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_5d
    :goto_5d
    const/4 v9, 0x4

    if-ne v8, v9, :cond_66

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_66
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v9

    const/16 v10, 0x15

    if-le v9, v10, :cond_145

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v9, :cond_84

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v9, v11, :cond_145

    :cond_84
    const-string/jumbo v9, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_145

    const/16 v9, 0x8

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_93
    :goto_93
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_bc

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_bc
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "Both models are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Result of setWifiApConfiguration.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_f5} :catch_101
    .catchall {:try_start_2c .. :try_end_f5} :catchall_14f

    if-eqz v6, :cond_fa

    :try_start_f7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_157

    :cond_fa
    :goto_fa
    move-object v5, v6

    :cond_fb
    :goto_fb
    return v7

    :cond_fc
    const/4 v9, 0x1

    :try_start_fd
    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_ff} :catch_101
    .catchall {:try_start_fd .. :try_end_ff} :catchall_14f

    goto/16 :goto_5d

    :catch_101
    move-exception v4

    move-object v5, v6

    :goto_103
    :try_start_103
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v8, v12, :cond_123

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadApConfigurationOldVer(Ljava/lang/String;)Z
    :try_end_122
    .catchall {:try_start_103 .. :try_end_122} :catchall_18f

    move-result v7

    :cond_123
    if-eqz v5, :cond_fb

    :try_start_125
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_fb

    :catch_129
    move-exception v3

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    :cond_145
    :try_start_145
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v9, :cond_93

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_14d} :catch_101
    .catchall {:try_start_145 .. :try_end_14d} :catchall_14f

    goto/16 :goto_93

    :catchall_14f
    move-exception v9

    move-object v5, v6

    :goto_151
    if-eqz v5, :cond_156

    :try_start_153
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_173

    :cond_156
    :goto_156
    throw v9

    :catch_157
    move-exception v3

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :catch_173
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in loadWifiApConfig.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    :catchall_18f
    move-exception v9

    goto :goto_151

    :catch_191
    move-exception v4

    goto/16 :goto_103
.end method

.method private writeOtherConf(Ljava/lang/String;)V
    .registers 14

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileWriter;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_135
    .catchall {:try_start_1 .. :try_end_b} :catchall_126

    :try_start_b
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_8c

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v5}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_69} :catch_6a
    .catchall {:try_start_b .. :try_end_69} :catchall_132

    goto :goto_3f

    :catch_6a
    move-exception v2

    move-object v6, v7

    :goto_6c
    :try_start_6c
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileWriter TIMEOUT exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_126

    if-eqz v6, :cond_8b

    :try_start_88
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_120

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    :try_start_8c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PMFChecked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_ap_pmf_checked"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PSChecked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_ap_powersave_mode_checked"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WifiSharing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getWifiSharing(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_113} :catch_6a
    .catchall {:try_start_8c .. :try_end_113} :catchall_132

    if-eqz v7, :cond_118

    :try_start_115
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_11b

    :cond_118
    :goto_118
    move-object v6, v7

    goto/16 :goto_8b

    :catch_11b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_118

    :catch_120
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8b

    :catchall_126
    move-exception v8

    :goto_127
    if-eqz v6, :cond_12c

    :try_start_129
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    :cond_12c
    :goto_12c
    throw v8

    :catch_12d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12c

    :catchall_132
    move-exception v8

    move-object v6, v7

    goto :goto_127

    :catch_135
    move-exception v2

    goto/16 :goto_6c
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v1, v4, [B

    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_24

    const-string/jumbo v4, "WifiApBackupRestore"

    const-string/jumbo v5, "Error reading bytes into iv"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_66

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v5, 0x10

    new-array v5, v5, [B

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_50

    const-string/jumbo v4, "WifiApBackupRestore"

    const-string/jumbo v5, "Error reading bytes into salt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    :goto_54
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v4

    :cond_66
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    goto :goto_54
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 21

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v14

    if-nez v14, :cond_86

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_3b
    .catchall {:try_start_5 .. :try_end_16} :catchall_f7

    :try_start_16
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_136
    .catchall {:try_start_16 .. :try_end_1d} :catchall_12c

    :try_start_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_13a
    .catchall {:try_start_1d .. :try_end_22} :catchall_12f

    move-result-object v10

    move-object v5, v6

    move-object v8, v9

    :cond_25
    :goto_25
    const/4 v12, 0x0

    const/16 v14, 0x400

    :try_start_28
    new-array v1, v14, [B

    :goto_2a
    if-eqz v8, :cond_a9

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_a9

    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3b
    .catchall {:try_start_28 .. :try_end_3a} :catchall_f7

    goto :goto_2a

    :catch_3b
    move-exception v2

    :goto_3c
    :try_start_3c
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_f7

    const/4 v13, -0x1

    if-eqz v10, :cond_5c

    :try_start_59
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_5c
    if-eqz v5, :cond_61

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_61
    if-eqz v8, :cond_66

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_66
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6b} :catch_db

    :cond_6b
    :goto_6b
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Everything OK?0:1 - ret"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_86
    :try_start_86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_25

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_98} :catch_3b
    .catchall {:try_start_86 .. :try_end_98} :catchall_f7

    :try_start_98
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a5} :catch_13f
    .catchall {:try_start_98 .. :try_end_a5} :catchall_133

    move-object v3, v4

    move-object v10, v11

    goto/16 :goto_25

    :cond_a9
    if-eqz v10, :cond_ae

    :try_start_ab
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_ae
    if-eqz v5, :cond_b3

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_b3
    if-eqz v8, :cond_b8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_b8
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_bd} :catch_be

    goto :goto_6b

    :catch_be
    move-exception v7

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d9
    const/4 v13, -0x1

    goto :goto_6b

    :catch_db
    move-exception v7

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    :catchall_f7
    move-exception v14

    :goto_f8
    if-eqz v10, :cond_fd

    :try_start_fa
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_fd
    if-eqz v5, :cond_102

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_102
    if-eqz v8, :cond_107

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_107
    if-eqz v3, :cond_10c

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10c} :catch_10d

    :cond_10c
    :goto_10c
    throw v14

    :catch_10d
    move-exception v7

    const-string/jumbo v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_10c

    :catchall_12c
    move-exception v14

    move-object v8, v9

    goto :goto_f8

    :catchall_12f
    move-exception v14

    move-object v5, v6

    move-object v8, v9

    goto :goto_f8

    :catchall_133
    move-exception v14

    move-object v3, v4

    goto :goto_f8

    :catch_136
    move-exception v2

    move-object v8, v9

    goto/16 :goto_3c

    :catch_13a
    move-exception v2

    move-object v5, v6

    move-object v8, v9

    goto/16 :goto_3c

    :catch_13f
    move-exception v2

    move-object v3, v4

    goto/16 :goto_3c
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v3

    if-ne v3, v5, :cond_54

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateEncryptSalt()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    :goto_43
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_54
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    goto :goto_43
.end method

.method public generateEncryptSalt()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    return-object v1
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method loadApConfigurationOldVer(Ljava/lang/String;)Z
    .registers 16

    const/16 v12, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_4
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f} :catch_179
    .catchall {:try_start_4 .. :try_end_1f} :catchall_177

    :try_start_1f
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    iput-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v11, 0xe

    if-le v10, v11, :cond_49

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_49

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_49
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v10

    const/16 v11, 0x15

    if-le v10, v11, :cond_d1

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v10, :cond_67

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v10, v12, :cond_d1

    :cond_67
    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d1

    const/16 v10, 0x8

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_76
    :goto_76
    const-string/jumbo v10, "0"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_118

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    :cond_8c
    :goto_8c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_137

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    const-string/jumbo v10, "WifiApBackupRestore"

    const-string/jumbo v11, " conf changed to wpa2 from wpa"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    if-eqz v0, :cond_aa

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_aa
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Result of setWifiApConfiguration from OldVer.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_ca} :catch_da
    .catchall {:try_start_1f .. :try_end_ca} :catchall_12f

    if-eqz v6, :cond_cf

    :try_start_cc
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_13e

    :cond_cf
    :goto_cf
    move-object v5, v6

    :cond_d0
    :goto_d0
    return v8

    :cond_d1
    :try_start_d1
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v10, :cond_76

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d9} :catch_da
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_12f

    goto :goto_76

    :catch_da
    move-exception v4

    move-object v5, v6

    :goto_dc
    :try_start_dc
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_dc .. :try_end_f6} :catchall_177

    if-eqz v5, :cond_d0

    :try_start_f8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_d0

    :catch_fc
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_118
    const/4 v10, 0x3

    if-ne v7, v10, :cond_8c

    :try_start_11b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_12d} :catch_da
    .catchall {:try_start_11b .. :try_end_12d} :catchall_12f

    goto/16 :goto_8c

    :catchall_12f
    move-exception v10

    move-object v5, v6

    :goto_131
    if-eqz v5, :cond_136

    :try_start_133
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_15b

    :cond_136
    :goto_136
    throw v10

    :cond_137
    :try_start_137
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13c} :catch_da
    .catchall {:try_start_137 .. :try_end_13c} :catchall_12f

    goto/16 :goto_a2

    :catch_13e
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cf

    :catch_15b
    move-exception v3

    const-string/jumbo v11, "WifiApBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception is.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :catchall_177
    move-exception v10

    goto :goto_131

    :catch_179
    move-exception v4

    goto/16 :goto_dc
.end method

.method makeXML(Ljava/lang/String;)I
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_a4
    .catchall {:try_start_2 .. :try_end_2b} :catchall_cc

    :try_start_2b
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "softap.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "otherconf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "MHStempbackup.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "otherconf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_97} :catch_dc
    .catchall {:try_start_2b .. :try_end_97} :catchall_d9

    if-eqz v5, :cond_9c

    :try_start_99
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9e

    :cond_9c
    :goto_9c
    move-object v4, v5

    :cond_9d
    :goto_9d
    return v2

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_9c

    :catch_a4
    move-exception v1

    :goto_a5
    :try_start_a5
    const-string/jumbo v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeXML exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_cc

    const/4 v2, -0x1

    if-eqz v4, :cond_9d

    :try_start_c2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_9d

    :catch_c6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_9d

    :catchall_cc
    move-exception v7

    :goto_cd
    if-eqz v4, :cond_d2

    :try_start_cf
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    :cond_d2
    :goto_d2
    throw v7

    :catch_d3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_d2

    :catchall_d9
    move-exception v7

    move-object v4, v5

    goto :goto_cd

    :catch_dc
    move-exception v1

    move-object v4, v5

    goto :goto_a5
.end method

.method public permissionCheck()Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_17

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_14

    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method readXML(Ljava/lang/String;)I
    .registers 19

    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v6, Ljava/io/FileReader;

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "wifi_wpaconf.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_35} :catch_21a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_21d
    .catchall {:try_start_2 .. :try_end_35} :catchall_217

    :try_start_35
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v7, 0x0

    const-string/jumbo v12, ""

    const-string/jumbo v2, ""

    :goto_43
    const/4 v13, 0x1

    if-eq v9, v13, :cond_1b9

    const/4 v13, 0x2

    if-ne v9, v13, :cond_6e

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_68

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_68

    const-string/jumbo v13, "otherconf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    :cond_68
    const/4 v7, 0x1

    :cond_69
    :goto_69
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_43

    :cond_6e
    const/4 v13, 0x4

    if-ne v9, v13, :cond_188

    if-eqz v7, :cond_cd

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cd

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set8(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] model : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_a9} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a9} :catch_107
    .catchall {:try_start_35 .. :try_end_a9} :catchall_180

    goto :goto_69

    :catch_aa
    move-exception v10

    move-object v5, v6

    :goto_ac
    :try_start_ac
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "runtimeException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_217

    const/4 v11, -0x1

    if-eqz v5, :cond_cc

    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_1dd

    :cond_cc
    :goto_cc
    return v11

    :cond_cd
    if-eqz v7, :cond_146

    :try_start_cf
    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_146

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] xmlConf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_105} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_105} :catch_107
    .catchall {:try_start_cf .. :try_end_105} :catchall_180

    goto/16 :goto_69

    :catch_107
    move-exception v1

    move-object v5, v6

    :goto_109
    :try_start_109
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read XML Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_109 .. :try_end_123} :catchall_217

    const/4 v11, -0x1

    if-eqz v5, :cond_cc

    :try_start_126
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_12a

    goto :goto_cc

    :catch_12a
    move-exception v4

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception on closing.."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_146
    if-eqz v7, :cond_69

    :try_start_148
    const-string/jumbo v13, "otherconf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] xmlOtherConf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/RuntimeException; {:try_start_148 .. :try_end_17e} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_17e} :catch_107
    .catchall {:try_start_148 .. :try_end_17e} :catchall_180

    goto/16 :goto_69

    :catchall_180
    move-exception v13

    move-object v5, v6

    :goto_182
    if-eqz v5, :cond_187

    :try_start_184
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_1fa

    :cond_187
    :goto_187
    throw v13

    :cond_188
    const/4 v13, 0x3

    if-ne v9, v13, :cond_69

    :try_start_18b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_19d

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19d

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_19d
    if-eqz v7, :cond_1ab

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ab

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_1ab
    if-eqz v7, :cond_69

    const-string/jumbo v13, "otherconf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1b3
    .catch Ljava/lang/RuntimeException; {:try_start_18b .. :try_end_1b3} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1b3} :catch_107
    .catchall {:try_start_18b .. :try_end_1b3} :catchall_180

    move-result v13

    if-eqz v13, :cond_69

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_1b9
    if-eqz v6, :cond_1be

    :try_start_1bb
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1be} :catch_1c1

    :cond_1be
    :goto_1be
    move-object v5, v6

    goto/16 :goto_cc

    :catch_1c1
    move-exception v4

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception on closing.."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    :catch_1dd
    move-exception v4

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception on closing.."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cc

    :catch_1fa
    move-exception v4

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception on closing.."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    :catchall_217
    move-exception v13

    goto/16 :goto_182

    :catch_21a
    move-exception v10

    goto/16 :goto_ac

    :catch_21d
    move-exception v1

    goto/16 :goto_109
.end method

.method public run()V
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-nez v23, :cond_12

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "intent is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_36d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "SAVE_PATH"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SESSION_KEY"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SECURITY_LEVEL"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    const-string/jumbo v23, "WifiApBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[BACKUP] path : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", action : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", mSource : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " sessionTime : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " securityLevel : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v23

    if-nez v23, :cond_114

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "Permission Error."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v23

    if-nez v23, :cond_336

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_13d
    const-string/jumbo v23, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-nez v23, :cond_169

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "There is no conf file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    if-nez v23, :cond_190

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "There is no networks to backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_190
    :try_start_190
    new-instance v22, Landroid/os/StatFs;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_199} :catch_1e9

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/StatFs;->getBlockSize()I

    move-result v23

    move/from16 v0, v23

    int-to-long v4, v0

    mul-long v14, v6, v4

    cmp-long v23, v14, v8

    if-gez v23, :cond_218

    const-string/jumbo v23, "WifiApBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "freeSpaceInBytes : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", confSize : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v8

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :catch_1e9
    move-exception v10

    const-string/jumbo v23, "WifiApBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Exception : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_218
    new-instance v12, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "softap.conf"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi/softap.conf"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "softap.conf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_28d

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "encrypt fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_28d
    new-instance v13, Ljava/io/File;

    const-string/jumbo v23, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->writeOtherConf(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/MHStempbackup.conf"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "MHStempbackup.conf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2d6

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_2d6
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f9

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "encrypt fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_2f9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->makeXML(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_324

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "makeXML fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_324
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    :cond_335
    :goto_335
    return-void

    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_352

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "Action is CANCEL"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_335

    :cond_352
    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "Sending Response FAIL"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_36d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_335

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "SAVE_PATH"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SESSION_KEY"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SECURITY_LEVEL"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    const-string/jumbo v23, "WifiApBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[RESTORE] path : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", action : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", mSource : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v23

    if-nez v23, :cond_42f

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "PErmission ERROR"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_42f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v23

    if-nez v23, :cond_752

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_458

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v16

    if-eqz v16, :cond_4ac

    const-string/jumbo v23, "WifiApBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "setWifiApEnabled ..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v18, 0x0

    :cond_491
    if-eqz v16, :cond_4ac

    const-wide/16 v24, 0x3e8

    :try_start_495
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_4a3
    .catch Ljava/lang/InterruptedException; {:try_start_495 .. :try_end_4a3} :catch_4db

    move-result v16

    const/16 v23, 0xa

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_491

    :cond_4ac
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->readXML(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4e9

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "xml parsing error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :catch_4db
    move-exception v11

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "Exception while turning off MHS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :cond_4e9
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_6ce

    new-instance v12, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "temp.conf"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "temp.conf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_5b5

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "decrypt fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_5b5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "temp.conf"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadWifiApConfig(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5f9

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "WifiConfig loaded fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_5f9
    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "WifiConfig loaded success"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_724

    new-instance v12, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "MHStemprestore.conf"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "MHStemprestore.conf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6e9

    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "decrypt fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_6ce
    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "can\'t read configuration file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_6e9
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "MHStemprestore.conf"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadOtherConf(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_73f

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_724
    const-string/jumbo v23, "WifiApBackupRestore"

    const-string/jumbo v24, "can\'t read otherconf file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_73f
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_335

    :cond_752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_335

    const/16 v23, 0x1

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void
.end method

.method sendResponse(III)V
    .registers 10

    const/4 v5, 0x0

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "sendResponse.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isCancelled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get5()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get5()Z

    move-result v2

    if-eqz v2, :cond_50

    return-void

    :cond_50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v2

    if-nez v2, :cond_b7

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "EXPORT_SESSION_TIME"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6f
    :goto_6f
    const-string/jumbo v2, "RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "ERR_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "REQ_SIZE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SOURCE"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SmartSwitch"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_a4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    if-nez v2, :cond_b6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_b6
    return-void

    :cond_b7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6f

    :cond_c7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a4
.end method
