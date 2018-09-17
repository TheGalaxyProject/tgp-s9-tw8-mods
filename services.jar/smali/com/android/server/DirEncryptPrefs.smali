.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_OLD_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "SDCardEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static final UUID_LIST_MAX_SIZE:I = 0x32

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addUUIDPrefs(IILjava/lang/String;)Z
    .registers 25

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    if-nez p3, :cond_10

    const-string/jumbo v18, "SD card uuid field is null"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v12

    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[Add UUID] : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string/jumbo v18, "/efs/sec_efs/"

    const-string/jumbo v19, "SDCardEncryption.Pref"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3a
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_80

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 644 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    :cond_68
    :goto_68
    new-instance v17, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_6f} :catch_15e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6f} :catch_22e
    .catchall {:try_start_3a .. :try_end_6f} :catchall_242

    if-nez v17, :cond_16e

    const/4 v12, 0x0

    const/16 v18, 0x0

    if-eqz v17, :cond_7f

    :try_start_76
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V

    const-string/jumbo v19, "add complete"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_263

    :cond_7f
    :goto_7f
    return v18

    :cond_80
    :try_start_80
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_68

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v15

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_13d

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v10

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_12f

    const/4 v13, 0x1

    :goto_c2
    if-nez p2, :cond_131

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_131

    const/16 v18, 0x1

    :goto_d2
    or-int v13, v13, v18

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_134

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_134

    const/16 v18, 0x1

    :goto_ea
    or-int v13, v13, v18

    if-eqz v13, :cond_137

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SD card status is same "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    iget v0, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_12b

    const-string/jumbo v18, "Only SD card policy update"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptPrefs;->updateMDMPolicyPrefs(I)Z

    :cond_12b
    const/4 v12, 0x1

    const/16 v18, 0x1

    return v18

    :cond_12f
    const/4 v13, 0x0

    goto :goto_c2

    :cond_131
    const/16 v18, 0x0

    goto :goto_d2

    :cond_134
    const/16 v18, 0x0

    goto :goto_ea

    :cond_137
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-interface {v8, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_13d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_68

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_68

    const-string/jumbo v18, "delete first UUID list"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_15c} :catch_15e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_15c} :catch_22e
    .catchall {:try_start_80 .. :try_end_15c} :catchall_242

    goto/16 :goto_68

    :catch_15e
    move-exception v3

    :goto_15f
    :try_start_15f
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_242

    if-eqz v16, :cond_16d

    :try_start_164
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16d} :catch_255

    :cond_16d
    :goto_16d
    return v12

    :cond_16e
    if-eqz v14, :cond_192

    :try_start_170
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 644 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    :cond_192
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MDM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    if-eqz v14, :cond_1f5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_1db
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_21e

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1db

    :cond_1f5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_21e
    .catch Ljava/io/FileNotFoundException; {:try_start_170 .. :try_end_21e} :catch_258
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_21e} :catch_25d
    .catchall {:try_start_170 .. :try_end_21e} :catchall_251

    :cond_21e
    const/4 v12, 0x1

    if-eqz v17, :cond_22a

    :try_start_221
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V

    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_22a} :catch_261

    :cond_22a
    :goto_22a
    move-object/from16 v16, v17

    goto/16 :goto_16d

    :catch_22e
    move-exception v4

    :goto_22f
    :try_start_22f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_232
    .catchall {:try_start_22f .. :try_end_232} :catchall_242

    if-eqz v16, :cond_16d

    :try_start_234
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    const-string/jumbo v18, "add complete"

    invoke-static/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_23d} :catch_23f

    goto/16 :goto_16d

    :catch_23f
    move-exception v5

    goto/16 :goto_16d

    :catchall_242
    move-exception v18

    :goto_243
    if-eqz v16, :cond_24e

    :try_start_245
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V

    const-string/jumbo v19, "add complete"

    invoke-static/range {v19 .. v19}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_24e} :catch_24f

    :cond_24e
    :goto_24e
    throw v18

    :catch_24f
    move-exception v5

    goto :goto_24e

    :catchall_251
    move-exception v18

    move-object/from16 v16, v17

    goto :goto_243

    :catch_255
    move-exception v5

    goto/16 :goto_16d

    :catch_258
    move-exception v3

    move-object/from16 v16, v17

    goto/16 :goto_15f

    :catch_25d
    move-exception v4

    move-object/from16 v16, v17

    goto :goto_22f

    :catch_261
    move-exception v5

    goto :goto_22a

    :catch_263
    move-exception v5

    goto/16 :goto_7f
.end method

.method private checkUUIDPrefs(Ljava/lang/String;)I
    .registers 8

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_11

    const-string/jumbo v4, "SD card uuid field is null"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v0

    :cond_11
    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v4, "policy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_23

    return v0

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_51

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exist list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return v0

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_51
    return v0
.end method

.method private checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_a

    const-string/jumbo v1, "SD card uuid field is null"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v0

    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    return v0

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exist SD card list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3f
    const-string/jumbo v1, "can\'t find SD card uuid"

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .registers 3

    const-class v1, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    :cond_e
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeUUIDPrefs(Ljava/lang/String;)Z
    .registers 20

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_15

    const-string/jumbo v15, "SD card uuid field is null"

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v12

    :cond_15
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove uuid : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v15, "policy"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_42

    return v12

    :cond_42
    new-instance v5, Ljava/io/File;

    const-string/jumbo v15, "/efs/sec_efs/"

    const-string/jumbo v16, "SDCardEncryption.Pref"

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_8a

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v7, v15}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "remove the item : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8a

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_8a
    if-nez v2, :cond_93

    const-string/jumbo v15, "can\'t find remove uuid"

    invoke-static {v15}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v12

    :cond_93
    :try_start_93
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "chmod 644 "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_ba} :catch_106
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_ba} :catch_fa
    .catchall {:try_start_93 .. :try_end_ba} :catchall_112

    :try_start_ba
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MDM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_d8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_f0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_ba .. :try_end_ed} :catch_11e
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_ed} :catch_121
    .catchall {:try_start_ba .. :try_end_ed} :catchall_11b

    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    :cond_f0
    const/4 v12, 0x1

    if-eqz v14, :cond_f6

    :try_start_f3
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f8

    :cond_f6
    :goto_f6
    move-object v13, v14

    :cond_f7
    :goto_f7
    return v12

    :catch_f8
    move-exception v4

    goto :goto_f6

    :catch_fa
    move-exception v4

    :goto_fb
    :try_start_fb
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_112

    if-eqz v13, :cond_f7

    :try_start_100
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_f7

    :catch_104
    move-exception v4

    goto :goto_f7

    :catch_106
    move-exception v3

    :goto_107
    :try_start_107
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_112

    if-eqz v13, :cond_f7

    :try_start_10c
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_f7

    :catch_110
    move-exception v4

    goto :goto_f7

    :catchall_112
    move-exception v15

    :goto_113
    if-eqz v13, :cond_118

    :try_start_115
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    :cond_118
    :goto_118
    throw v15

    :catch_119
    move-exception v4

    goto :goto_118

    :catchall_11b
    move-exception v15

    move-object v13, v14

    goto :goto_113

    :catch_11e
    move-exception v3

    move-object v13, v14

    goto :goto_107

    :catch_121
    move-exception v4

    move-object v13, v14

    goto :goto_fb
.end method

.method private restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs/"

    const-string/jumbo v11, "SDCardEncryption.Pref"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_27

    :cond_20
    const-string/jumbo v10, "Can\'t read or open pref file"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return-object v5

    :cond_27
    :try_start_27
    const-string/jumbo v10, "restoreUUIDPrefs"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_37} :catch_d4
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_37} :catch_b3
    .catchall {:try_start_27 .. :try_end_37} :catchall_c1

    :try_start_37
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4b

    const-string/jumbo v10, "read data is null from file"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_43} :catch_68
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_d6
    .catchall {:try_start_37 .. :try_end_43} :catchall_d1

    if-eqz v8, :cond_48

    :try_start_45
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-object v5

    :catch_49
    move-exception v1

    goto :goto_48

    :cond_4b
    :try_start_4b
    const-string/jumbo v10, "policy"

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_5e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_aa

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_67} :catch_68
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_67} :catch_d6
    .catchall {:try_start_4b .. :try_end_67} :catchall_d1

    goto :goto_5e

    :catch_68
    move-exception v2

    move-object v7, v8

    :goto_6a
    :try_start_6a
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_c1

    if-eqz v7, :cond_72

    :try_start_6f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_bf

    :cond_72
    :goto_72
    const-string/jumbo v10, "#########################################"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_79
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_ca

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[List "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_aa
    if-eqz v8, :cond_af

    :try_start_ac
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b1

    :cond_af
    :goto_af
    move-object v7, v8

    goto :goto_72

    :catch_b1
    move-exception v1

    goto :goto_af

    :catch_b3
    move-exception v0

    :goto_b4
    :try_start_b4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c1

    if-eqz v7, :cond_72

    :try_start_b9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_72

    :catch_bd
    move-exception v1

    goto :goto_72

    :catch_bf
    move-exception v1

    goto :goto_72

    :catchall_c1
    move-exception v10

    :goto_c2
    if-eqz v7, :cond_c7

    :try_start_c4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8

    :cond_c7
    :goto_c7
    throw v10

    :catch_c8
    move-exception v1

    goto :goto_c7

    :cond_ca
    const-string/jumbo v10, "#########################################"

    invoke-static {v10}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    return-object v5

    :catchall_d1
    move-exception v10

    move-object v7, v8

    goto :goto_c2

    :catch_d4
    move-exception v2

    goto :goto_6a

    :catch_d6
    move-exception v0

    move-object v7, v8

    goto :goto_b4
.end method

.method private updateMDMPolicyPrefs(I)Z
    .registers 16

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v7}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v11, "policy"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1c

    const-string/jumbo v11, "policy is same"

    invoke-static {v11}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    return v8

    :cond_1c
    new-instance v4, Ljava/io/File;

    const-string/jumbo v11, "/efs/sec_efs/"

    const-string/jumbo v12, "SDCardEncryption.Pref"

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_30
    :try_start_30
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_35} :catch_ae
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_a2
    .catchall {:try_start_30 .. :try_end_35} :catchall_ba

    if-nez v10, :cond_40

    const/4 v11, 0x0

    if-eqz v10, :cond_3d

    :try_start_3a
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return v11

    :catch_3e
    move-exception v3

    goto :goto_3d

    :cond_40
    :try_start_40
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "chmod 644 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MDM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_80
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_98

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_95} :catch_c6
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_95} :catch_c9
    .catchall {:try_start_40 .. :try_end_95} :catchall_c3

    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_98
    const/4 v8, 0x1

    if-eqz v10, :cond_9e

    :try_start_9b
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a0

    :cond_9e
    :goto_9e
    move-object v9, v10

    :cond_9f
    :goto_9f
    return v8

    :catch_a0
    move-exception v3

    goto :goto_9e

    :catch_a2
    move-exception v2

    :goto_a3
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_ba

    if-eqz v9, :cond_9f

    :try_start_a8
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_9f

    :catch_ac
    move-exception v3

    goto :goto_9f

    :catch_ae
    move-exception v1

    :goto_af
    :try_start_af
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ba

    if-eqz v9, :cond_9f

    :try_start_b4
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_9f

    :catch_b8
    move-exception v3

    goto :goto_9f

    :catchall_ba
    move-exception v11

    :goto_bb
    if-eqz v9, :cond_c0

    :try_start_bd
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    :cond_c0
    :goto_c0
    throw v11

    :catch_c1
    move-exception v3

    goto :goto_c0

    :catchall_c3
    move-exception v11

    move-object v9, v10

    goto :goto_bb

    :catch_c6
    move-exception v1

    move-object v9, v10

    goto :goto_af

    :catch_c9
    move-exception v2

    move-object v9, v10

    goto :goto_a3
.end method


# virtual methods
.method public clearPrefs(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v4, "clearPrefs()"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/DirEncryptPrefs;->removeUUIDPrefs(Ljava/lang/String;)Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v4, "policy"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPolicy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6d

    if-nez v1, :cond_6d

    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs/"

    const-string/jumbo v5, "SDCardEncryption.Pref"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6d

    const-string/jumbo v4, "There is no list, so delete internal meta file !!!"

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6d
    return-void
.end method

.method public haveEncPrefs()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/sec_efs/"

    const-string/jumbo v2, "SDCardEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .registers 10

    new-instance v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v2}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/DirEncryptPrefs;->restoreUUIDPrefs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v6, "policy"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restorePrefs() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_a8

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/DirEncryptPrefs;->checkUUIDPrefs(Ljava/lang/String;Ljava/util/List;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v2

    :goto_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy        : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current UUID  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encrypt state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptPrefs;->log(Ljava/lang/String;)V

    :cond_a8
    return-object v2

    :cond_a9
    iput v0, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    const/4 v6, 0x3

    iput v6, v2, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    goto :goto_5d
.end method

.method public savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z
    .registers 5

    iget v0, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v1, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object v2, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptPrefs;->addUUIDPrefs(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
