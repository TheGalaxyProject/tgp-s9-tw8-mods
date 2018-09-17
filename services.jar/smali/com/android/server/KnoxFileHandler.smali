.class public Lcom/android/server/KnoxFileHandler;
.super Landroid/content/pm/IPersonaFileHandler$Stub;
.source "KnoxFileHandler.java"


# static fields
.field private static ALIAS_NAME:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static final FILE_EDK_DE_PATH:Ljava/lang/String; = "knox_edk_de_"

.field public static final FLAG_STORAGE_CE:I = 0x1

.field public static final FLAG_STORAGE_CE_NO_REMOUNT:I = 0x100

.field public static final FLAG_STORAGE_DE:I = 0x10

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final PREFIX_DATA_SYSTEM_USERS_PATH:Ljava/lang/String; = "/data/system/users"

.field static final TAG:Ljava/lang/String; = "KnoxFileHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field static final TIMA_TAG:Ljava/lang/String; = "KnoxFileHandler.tima"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEpm:Lcom/android/server/EnterprisePartitionManager;

.field private final mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/container/key"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/pm/IPersonaFileHandler$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-static {p1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    iput-object p1, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "FIPS3.0"

    :goto_19
    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    return-void

    :cond_1c
    const-string/jumbo v0, "3.0"

    goto :goto_19
.end method

.method private checkTimaError(II)V
    .registers 5

    packed-switch p2, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v0, "KnoxFileHandler.tima"

    const-string/jumbo v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setTimaCompromisedState(I)V

    goto :goto_3

    nop

    :pswitch_data_12
    .packed-switch 0x1000c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private checkTimaStatus(I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_41

    const/4 v0, 0x1

    :goto_7
    sget-boolean v2, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "KnoxFileHandler.tima"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkTimaStatus() - Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Validation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    invoke-direct {p0, p1, v1}, Lcom/android/server/KnoxFileHandler;->checkTimaError(II)V

    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private convertStorageTypeToFlag(I)I
    .registers 4

    packed-switch p1, :pswitch_data_16

    :pswitch_3
    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Not specified storage type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_e
    const/4 v0, 0x1

    return v0

    :pswitch_10
    const/16 v0, 0x10

    return v0

    :pswitch_13
    const/16 v0, 0x100

    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_3
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method private createPartitionInternal(ILjava/lang/String;ZI)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/KnoxFileHandler;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v2, p1, p4}, Lcom/android/server/EnterprisePartitionManager;->createPartition(II)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "Knox persona partition successfully created.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    return v2

    :cond_21
    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "createPartition : secretkey not saved successfully. Removing partition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->convertStorageTypeToFlag(I)I

    move-result v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v4

    :cond_32
    return v4
.end method

.method private deleteEcryptFSKey(IZI)V
    .registers 23

    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey enter"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v12, p2

    :try_start_16
    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteEcryptFSKey-> isTimaEnabled :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_157

    invoke-direct/range {p0 .. p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z
    :try_end_39
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_39} :catch_f8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_39} :catch_12d
    .catch Ljava/security/cert/CertificateException; {:try_start_16 .. :try_end_39} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_39} :catch_261
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_237
    .catchall {:try_start_16 .. :try_end_39} :catchall_28b

    move-result v15

    if-eqz v15, :cond_a9

    :try_start_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_af

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_9e

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from TIMA keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_9e} :catch_df
    .catchall {:try_start_3c .. :try_end_9e} :catchall_120

    :cond_9e
    :goto_9e
    if-nez v13, :cond_a9

    :try_start_a0
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/security/KeyStoreException; {:try_start_a0 .. :try_end_a9} :catch_f8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a0 .. :try_end_a9} :catch_12d
    .catch Ljava/security/cert/CertificateException; {:try_start_a0 .. :try_end_a9} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a9} :catch_261
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a9} :catch_237
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_28b

    :cond_a9
    :goto_a9
    if-eqz v9, :cond_ae

    :try_start_ab
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_218

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    :try_start_af
    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_9e

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key not successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from TIMA keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_de} :catch_df
    .catchall {:try_start_af .. :try_end_de} :catchall_120

    goto :goto_9e

    :catch_df
    move-exception v4

    :try_start_e0
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: getTimaKeyStore failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ec
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_120

    if-nez v13, :cond_a9

    :try_start_ee
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/security/KeyStoreException; {:try_start_ee .. :try_end_f7} :catch_f8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ee .. :try_end_f7} :catch_12d
    .catch Ljava/security/cert/CertificateException; {:try_start_ee .. :try_end_f7} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f7} :catch_261
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_237
    .catchall {:try_start_ee .. :try_end_f7} :catchall_28b

    goto :goto_a9

    :catch_f8
    move-exception v5

    :try_start_f9
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_28b

    if-eqz v9, :cond_ae

    :try_start_fe
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    goto :goto_ae

    :catch_102
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :catchall_120
    move-exception v15

    if-nez v13, :cond_12c

    :try_start_123
    const-string/jumbo v16, "KnoxFileHandler"

    const-string/jumbo v17, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    throw v15
    :try_end_12d
    .catch Ljava/security/KeyStoreException; {:try_start_123 .. :try_end_12d} :catch_f8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_123 .. :try_end_12d} :catch_12d
    .catch Ljava/security/cert/CertificateException; {:try_start_123 .. :try_end_12d} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_12d} :catch_261
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_12d} :catch_237
    .catchall {:try_start_123 .. :try_end_12d} :catchall_28b

    :catch_12d
    move-exception v6

    :try_start_12e
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_28b

    if-eqz v9, :cond_ae

    :try_start_133
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_138

    goto/16 :goto_ae

    :catch_138
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :cond_157
    :try_start_157
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    new-instance v8, Ljava/io/File;

    sget-object v15, Lcom/android/server/KnoxFileHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_172

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v10

    :cond_172
    const/4 v15, 0x0

    invoke-virtual {v13, v9, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1d4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_1d4

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from Android keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d4
    invoke-virtual {v13}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_a9

    if-eqz v9, :cond_a9

    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteing key store file."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1ec
    .catch Ljava/security/KeyStoreException; {:try_start_157 .. :try_end_1ec} :catch_f8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_157 .. :try_end_1ec} :catch_12d
    .catch Ljava/security/cert/CertificateException; {:try_start_157 .. :try_end_1ec} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_1ec} :catch_261
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_1ec} :catch_237
    .catchall {:try_start_157 .. :try_end_1ec} :catchall_28b

    goto/16 :goto_a9

    :catch_1ee
    move-exception v7

    :try_start_1ef
    invoke-virtual {v7}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_1f2
    .catchall {:try_start_1ef .. :try_end_1f2} :catchall_28b

    if-eqz v9, :cond_ae

    :try_start_1f4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_ae

    :catch_1f9
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :catch_218
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :catch_237
    move-exception v4

    :try_start_238
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23b
    .catchall {:try_start_238 .. :try_end_23b} :catchall_28b

    if-eqz v9, :cond_ae

    :try_start_23d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_240} :catch_242

    goto/16 :goto_ae

    :catch_242
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :catch_261
    move-exception v3

    :try_start_262
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_28b

    if-eqz v9, :cond_ae

    :try_start_267
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_26a} :catch_26c

    goto/16 :goto_ae

    :catch_26c
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :catchall_28b
    move-exception v15

    if-eqz v9, :cond_291

    :try_start_28e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_291
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_291} :catch_292

    :cond_291
    :goto_291
    throw v15

    :catch_292
    move-exception v11

    const-string/jumbo v16, "KnoxFileHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to close input stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_291
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .registers 9

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->generateSalt()[B

    move-result-object v4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v5, "HmacSHA256"

    const-string/jumbo v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    move-result-object v1

    :goto_26
    return-object v1

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private generateSalt()[B
    .registers 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x20

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private getEcryptfsAliasByType(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_28

    :pswitch_3
    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Not specified type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_e
    sget-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "De"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_e
        :pswitch_3
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "Returning key password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_2e
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v3

    :try_start_5
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    return-object v2

    :catch_e
    move-exception v0

    sget-boolean v4, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "KnoxFileHandler.tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    throw v0

    :catch_2e
    move-exception v1

    sget-boolean v4, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "KnoxFileHandler.tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    throw v1
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "N/A"

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v0, "TIMAKeyStore"

    :cond_11
    :goto_11
    sget-boolean v1, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "KnoxFileHandler.tima"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-object v0

    :cond_3d
    const-string/jumbo v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v0, "FipsTimaKeyStore"

    goto :goto_11
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 7

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_16

    :try_start_7
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_65

    move-result v2

    :cond_16
    :goto_16
    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_34

    const-string/jumbo v3, "KnoxFileHandler.tima"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Tima Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return v2

    :cond_35
    :try_start_35
    const-string/jumbo v4, "FIPS3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v2

    goto :goto_16

    :cond_44
    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "KnoxFileHandler.tima"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_64} :catch_65

    goto :goto_16

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "KnoxFileHandler.tima"

    const-string/jumbo v4, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public static isDirectBootEnabled()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFileSystemEncrypted(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private mountByType(IZIZI)Z
    .registers 8

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v1, p1, v0, p4, p5}, Lcom/android/server/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v1

    return v1

    :cond_d
    if-eqz p2, :cond_19

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/KnoxFileHandler;->checkTimaError(II)V

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 25

    if-nez p1, :cond_5

    const/16 v20, 0x0

    return-object v20

    :cond_5
    const/4 v14, 0x0

    const/4 v7, 0x0

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2c

    :try_start_16
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_60
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_52
    .catchall {:try_start_16 .. :try_end_1b} :catchall_6e

    :try_start_1b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v13

    const/16 v20, 0x64

    move/from16 v0, v20

    new-array v14, v0, [B

    invoke-virtual {v8, v14}, Ljava/io/FileInputStream;->read([B)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_113
    .catchall {:try_start_1b .. :try_end_28} :catchall_10b

    :try_start_28
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4e

    move-object v7, v8

    :cond_2c
    const/16 v19, 0x0

    const/4 v9, 0x0

    :goto_2f
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v9, v0, :cond_77

    aget-byte v20, v14, v9

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_77

    aget-byte v20, v14, v9

    const/16 v21, 0x39

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_77

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :catch_4e
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catch_52
    move-exception v4

    :goto_53
    :try_start_53
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6e

    const/16 v20, 0x0

    :try_start_58
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    return-object v20

    :catch_5c
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catch_60
    move-exception v3

    :goto_61
    :try_start_61
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6e

    const/16 v20, 0x0

    :try_start_66
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    return-object v20

    :catch_6a
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catchall_6e
    move-exception v20

    :goto_6f
    :try_start_6f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    throw v20

    :catch_73
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :cond_77
    if-nez v19, :cond_7c

    const/16 v20, 0x0

    return-object v20

    :cond_7c
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/4 v9, 0x0

    :goto_83
    move/from16 v0, v19

    if-ge v9, v0, :cond_8e

    aget-byte v20, v14, v9

    aput-byte v20, v17, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    :cond_8e
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v20, 0x5f

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_a9

    if-nez v16, :cond_ac

    :cond_a9
    const/16 v20, 0x0

    return-object v20

    :cond_ac
    move/from16 v0, v16

    new-array v15, v0, [B

    const/4 v9, 0x0

    :goto_b1
    move/from16 v0, v16

    if-ge v9, v0, :cond_be

    add-int/lit8 v20, v9, 0x5

    aget-byte v20, v14, v20

    aput-byte v20, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b1

    :cond_be
    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x10

    :try_start_c2
    move/from16 v0, v20

    new-array v10, v0, [B

    fill-array-data v10, :array_118

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const-string/jumbo v21, "AES/CBC/PKCS7Padding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d9} :catch_f8

    :try_start_d9
    const-string/jumbo v20, "AES/CBC/PKCS7Padding"

    const-string/jumbo v21, "AndroidOpenSSL"

    invoke-static/range {v20 .. v21}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v12, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f6} :catch_108

    move-result-object v20

    return-object v20

    :catch_f8
    move-exception v4

    :goto_f9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v20, "KnoxFileHandler"

    const-string/jumbo v21, "error inside aes decrypt de key"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :catch_108
    move-exception v4

    move-object v11, v12

    goto :goto_f9

    :catchall_10b
    move-exception v20

    move-object v7, v8

    goto/16 :goto_6f

    :catch_10f
    move-exception v3

    move-object v7, v8

    goto/16 :goto_61

    :catch_113
    move-exception v4

    move-object v7, v8

    goto/16 :goto_53

    nop

    :array_118
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private removePartitionInternal(IZIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "remove partition failed.., file system not encrypted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    and-int/lit8 v3, p3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_21

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_2e

    const/4 v1, 0x1

    :cond_21
    :goto_21
    and-int/lit8 v3, p3, 0x1

    if-ne v3, v5, :cond_2b

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_35

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_3c

    :goto_2d
    return v0

    :cond_2e
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v6}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v1

    goto :goto_21

    :cond_35
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v5}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v0

    goto :goto_2b

    :cond_3c
    move v0, v2

    goto :goto_2d
.end method

.method private retrieveEcryptFSKey(IZII)Ljava/lang/String;
    .registers 16

    const/4 v10, 0x0

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v6

    move v4, p2

    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_2f

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveEcryptFSKey-> isTimaEnabled :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    if-nez v6, :cond_32

    return-object v10

    :cond_32
    if-eqz p2, :cond_b4

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z

    move-result v7

    if-eqz v7, :cond_b4

    const/4 v5, 0x0

    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ef

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_a9

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/security/KeyStoreException; {:try_start_3b .. :try_end_a9} :catch_df
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_a9} :catch_119
    .catchall {:try_start_3b .. :try_end_a9} :catchall_129

    :cond_a9
    :goto_a9
    if-nez v5, :cond_b4

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    :goto_b4
    return-object v2

    :cond_b5
    :try_start_b5
    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_a9

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " entry is null in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/security/KeyStoreException; {:try_start_b5 .. :try_end_de} :catch_df
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_de} :catch_119
    .catchall {:try_start_b5 .. :try_end_de} :catchall_129

    goto :goto_a9

    :catch_df
    move-exception v1

    :try_start_e0
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_129

    if-nez v5, :cond_b4

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_ef
    :try_start_ef
    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_a9

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/security/KeyStoreException; {:try_start_ef .. :try_end_118} :catch_df
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_118} :catch_119
    .catchall {:try_start_ef .. :try_end_118} :catchall_129

    goto :goto_a9

    :catch_119
    move-exception v0

    :try_start_11a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_129

    if-nez v5, :cond_b4

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :catchall_129
    move-exception v7

    if-nez v5, :cond_135

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_135
    throw v7
.end method

.method private retrieveEcryptFSKeyForTima20(II)Ljava/lang/String;
    .registers 14

    const/16 v8, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v8, [B

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v5

    if-eqz v5, :cond_5e

    :try_start_10
    invoke-interface {v5}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveEcryptFSKeyForTima20 errorCode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4a

    const/4 v8, -0x1

    if-eq p2, v8, :cond_4a

    invoke-interface {v5, p2}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    if-eqz v3, :cond_4a

    const/4 v8, 0x0

    aget-byte v8, v3, v8

    if-nez v8, :cond_4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v3, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    :cond_4a
    invoke-interface {v5}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_4d} :catch_51
    .catchall {:try_start_10 .. :try_end_4d} :catchall_59

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_50
    return-object v4

    :catch_51
    move-exception v2

    :try_start_52
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_59

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_59
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_5e
    return-object v4
.end method

.method private retrieveEcryptFSPwd(IZI)Ljava/lang/String;
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v3, p2

    :try_start_e
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_2c

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retrieveEcryptFSPwd-> isTimaEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-eqz p2, :cond_b4

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_f9

    move-result v5

    if-eqz v5, :cond_b4

    :try_start_35
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fe

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_a9

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a9} :catch_e9
    .catchall {:try_start_35 .. :try_end_a9} :catchall_12a

    :cond_a9
    :goto_a9
    if-nez v4, :cond_b4

    :try_start_ab
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_f9

    :cond_b4
    :goto_b4
    if-eqz v1, :cond_137

    const/16 v5, 0x10

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_bd
    :try_start_bd
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_a9

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " entry is null in TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e8} :catch_e9
    .catchall {:try_start_bd .. :try_end_e8} :catchall_12a

    goto :goto_a9

    :catch_e9
    move-exception v0

    :try_start_ea
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_12a

    if-nez v4, :cond_b4

    :try_start_ef
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f8} :catch_f9

    goto :goto_b4

    :catch_f9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b4

    :cond_fe
    :try_start_fe
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_a9

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_129} :catch_e9
    .catchall {:try_start_fe .. :try_end_129} :catchall_12a

    goto :goto_a9

    :catchall_12a
    move-exception v5

    if-nez v4, :cond_136

    :try_start_12d
    const-string/jumbo v6, "KnoxFileHandler"

    const-string/jumbo v7, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    throw v5
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_137} :catch_f9

    :cond_137
    return-object v8
.end method

.method private setFsErrorState(I)V
    .registers 3

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    return-void
.end method

.method private setFsSuccessState(I)V
    .registers 3

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    return-void
.end method

.method private setTimaCompromisedState(I)V
    .registers 5

    const-string/jumbo v1, "KnoxFileHandler"

    const-string/jumbo v2, "setTimaCompromisedState is called.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_DEVICE_COMPROMISE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private storeEcryptFSKey(I[BZI)Z
    .registers 16

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey enter"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v5

    move v2, p3

    sget-boolean v8, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v8, :cond_2e

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storeEcryptFSKey->  isTimaEnabled :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    if-nez v5, :cond_32

    const/4 v8, 0x0

    return v8

    :cond_32
    if-eqz p3, :cond_9b

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z

    move-result v8

    if-eqz v8, :cond_9b

    const/4 v4, 0x0

    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    if-eqz p2, :cond_9c

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, ""

    invoke-direct {v3, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    sget-boolean v8, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v8, :cond_8f

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Succesfully saved key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " inside TIMA keystore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/security/KeyStoreException; {:try_start_3b .. :try_end_8f} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_8f} :catch_b6
    .catchall {:try_start_3b .. :try_end_8f} :catchall_c6

    :cond_8f
    const/4 v6, 0x1

    :goto_90
    if-nez v4, :cond_9b

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    return v6

    :cond_9c
    :try_start_9c
    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "Illegal argument for TIMA keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/security/KeyStoreException; {:try_start_9c .. :try_end_a5} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a5} :catch_b6
    .catchall {:try_start_9c .. :try_end_a5} :catchall_c6

    goto :goto_90

    :catch_a6
    move-exception v1

    :try_start_a7
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_c6

    if-nez v4, :cond_9b

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catch_b6
    move-exception v0

    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_c6

    if-nez v4, :cond_9b

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :catchall_c6
    move-exception v8

    if-nez v4, :cond_d2

    const-string/jumbo v9, "KnoxFileHandler"

    const-string/jumbo v10, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    throw v8
.end method

.method private storeEcryptfsKeyForTima20(I[BI)Z
    .registers 12

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v2, :cond_46

    :try_start_b
    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    const-string/jumbo v3, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeEcryptfsKeyForTima20 errorCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_31

    const/4 v3, -0x1

    if-eq p3, v3, :cond_31

    invoke-interface {v2, p3, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    :cond_31
    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_34} :catch_39
    .catchall {:try_start_b .. :try_end_34} :catchall_41

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_37
    const/4 v3, 0x1

    return v3

    :catch_39
    move-exception v1

    :try_start_3a
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_41
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_46
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v6, "storeEcryptfsKeyForTima20 failed returning false"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    .registers 7

    const/4 v0, 0x1

    return v0
.end method

.method public checkStoreDeKey(I)V
    .registers 10

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/system/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "knox_edk_de_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-direct {p0, p1, v7, p1, v7}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/KnoxFileHandler;->readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, p1, v1, v7, v5}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v5

    if-eqz v5, :cond_64

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Success to store DE key!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_63

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Failed to delete legacy DE key.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    return-void

    :cond_64
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Failed to store DE key.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public clearLegacyEncryptionKey(IZI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public createPartition(ILjava/lang/String;ZI)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_30

    new-array v0, v4, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-direct {p0, p1, v1, p3, v7}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to create DE storage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_30
    move-object v1, p2

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "createPartition : password with password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_3b
    invoke-direct {p0, p1, v1, p3, v6}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to create CE storage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, v7}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v5

    :cond_4e
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "createPartition : success all..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public isEncrypted(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    return v0
.end method

.method public isMounted(I)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public migrateEcryptFSKey(IZI)Z
    .registers 10

    const/4 v2, 0x0

    if-eqz p2, :cond_16

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSPwd(IZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/sec/knox/container/util/KeyManagementUtil;->getEcryptfsKeySkmm1(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v2

    :cond_16
    :goto_16
    const-string/jumbo v3, "KnoxFileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eCryptfs key migration status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_31
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to get eCryptfs password OR fekek!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public migrateTimaEcryptFSKey(IZII)Z
    .registers 19

    const/4 v9, 0x0

    if-eqz p2, :cond_4c

    const/4 v3, 0x0

    const/4 v11, 0x2

    move/from16 v0, p4

    if-le v11, v0, :cond_87

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v10

    if-eqz v10, :cond_4c

    invoke-interface {v10}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v5

    if-nez v5, :cond_67

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_67

    const/16 v11, 0x10

    new-array v8, v11, [B

    move/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v7

    if-eqz v7, :cond_38

    const/4 v11, 0x0

    aget-byte v11, v7, v11

    if-nez v11, :cond_38

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-static {v7, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    move-object v3, v4

    :cond_38
    :goto_38
    invoke-interface {v10}, Landroid/service/tima/ITimaService;->keystoreShutdown()I

    if-eqz v3, :cond_4c

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v11

    invoke-virtual {v11, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->getEcryptfsKeySkmm1(ILjava/lang/String;)[B

    move-result-object v6

    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-direct {p0, p1, v6, v0, v11}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4b} :catch_82

    move-result v9

    :cond_4c
    :goto_4c
    const-string/jumbo v11, "KnoxFileHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "eCryptfs key migration for tima status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_67
    :try_start_67
    const-string/jumbo v11, "KnoxFileHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrieveEcryptFSPwdForTima20 errorCode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_81} :catch_82

    goto :goto_38

    :catch_82
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    :cond_87
    :try_start_87
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKeyForTima20(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-direct {p0, p1, v1, v0, v11}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9a} :catch_82

    move-result v9

    goto :goto_4c
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v0

    return v0
.end method

.method public mountFS(ILjava/lang/String;ZIZI)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    and-int/lit8 v0, p6, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_21

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_21
    and-int/lit8 v0, p6, 0x1

    if-ne v0, v7, :cond_35

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_35
    and-int/lit16 v0, p6, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4b

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsSuccessState(I)V

    return v7
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public preMount()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0}, Lcom/android/server/EnterprisePartitionManager;->preMount()Z

    move-result v0

    return v0
.end method

.method public removePartition(IZI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public syncFS(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->syncFS(II)Z

    move-result v0

    return v0
.end method

.method public unmount(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/android/server/KnoxFileHandler;->unmount(II)Z

    move-result v0

    return v0
.end method

.method public unmount(II)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    const/4 v0, 0x1

    and-int/lit8 v3, p2, 0x1

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v0

    :cond_1d
    const/4 v1, 0x1

    and-int/lit8 v3, p2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2b

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v1

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    if-eqz v0, :cond_31

    :goto_30
    return v1

    :cond_31
    move v1, v2

    goto :goto_30
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
