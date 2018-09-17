.class public Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;,
        Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final KEYGUARD_CONFIG_NAME:Ljava/lang/String; = "keyguardConfig"

.field private static final ODE_CONFIG_NAME:Ljava/lang/String; = "odeConfig"

.field public static final SCP_NONE:Ljava/lang/String; = "NONE"

.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final SCP_TYPE_A:Ljava/lang/String; = "SCP11a"

.field public static final SCP_TYPE_B:Ljava/lang/String; = "SCP11b"

.field public static final SCP_TYPE_CUSTOM:Ljava/lang/String; = "SCPCustom"

.field public static final STORAGE_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPE_ESE:I = 0x0

.field public static final STORAGE_TYPE_ESE_1:I = 0x3

.field public static final STORAGE_TYPE_ESE_1_NAME:Ljava/lang/String; = "eSE1"

.field public static final STORAGE_TYPE_ESE_2:I = 0x6

.field public static final STORAGE_TYPE_ESE_2_NAME:Ljava/lang/String; = "eSE2"

.field public static final STORAGE_TYPE_ESE_NAME:Ljava/lang/String; = "eSE"

.field public static final STORAGE_TYPE_ETC:I = 0x9

.field public static final STORAGE_TYPE_ETC_NAME:Ljava/lang/String; = "ETC"

.field public static final STORAGE_TYPE_MAX:I = 0xa

.field public static final STORAGE_TYPE_MICROSD:I = 0x2

.field public static final STORAGE_TYPE_MICROSD_1:I = 0x5

.field public static final STORAGE_TYPE_MICROSD_1_NAME:Ljava/lang/String; = "SD1"

.field public static final STORAGE_TYPE_MICROSD_2:I = 0x8

.field public static final STORAGE_TYPE_MICROSD_2_NAME:Ljava/lang/String; = "SD2"

.field public static final STORAGE_TYPE_MICROSD_NAME:Ljava/lang/String; = "SD"

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_UICC:I = 0x1

.field public static final STORAGE_TYPE_UICC_1:I = 0x4

.field public static final STORAGE_TYPE_UICC_1_NAME:Ljava/lang/String; = "SIM1"

.field public static final STORAGE_TYPE_UICC_2:I = 0x7

.field public static final STORAGE_TYPE_UICC_2_NAME:Ljava/lang/String; = "SIM2"

.field public static final STORAGE_TYPE_UICC_NAME:Ljava/lang/String; = "SIM"

.field private static final TAG:Ljava/lang/String; = "EFSProperties"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "eSE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SIM"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SD"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eSE1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "SD1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "eSE2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM2"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SD2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ETC"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SCP11a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SCP11b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SCPCustom"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    const/16 v6, 0x10

    new-array v0, v6, [C

    fill-array-data v0, :array_34

    if-nez p0, :cond_b

    return-object v7

    :cond_b
    array-length v4, p0

    shl-int/lit8 v6, v4, 0x1

    new-array v5, v6, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v1, v4, :cond_2e

    add-int/lit8 v2, v3, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v0, v6

    aput-char v6, v5, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    return-object v6

    :array_34
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static deleteKeyguardConfig()Z
    .registers 5

    const/4 v0, 0x1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs"

    const-string/jumbo v4, "keyguardConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v3, "failed to delete the existing keyguard config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1f
    return v0
.end method

.method public static deleteODEConfig()Z
    .registers 5

    const/4 v0, 0x1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs"

    const-string/jumbo v4, "odeConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v3, "failed to delete the existing ODE config file"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1f
    return v0
.end method

.method public static loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .registers 17

    const-string/jumbo v14, "load Keyguard config"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v14, "/efs/sec_efs"

    const-string/jumbo v15, "keyguardConfig"

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    const-string/jumbo v14, "Keyguard config file does not exist"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    return-object v14

    :cond_1f
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_21
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_104
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_ee
    .catchall {:try_start_21 .. :try_end_26} :catchall_11a

    :try_start_26
    new-instance v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    invoke-direct {v7}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_134
    .catchall {:try_start_26 .. :try_end_2b} :catchall_126

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v10

    if-lez v10, :cond_90

    new-array v0, v10, [B

    const/4 v14, 0x0

    invoke-virtual {v5, v0, v14, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    if-eq v13, v10, :cond_4f

    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "csTemp length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_43} :catch_130
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_137
    .catchall {:try_start_2b .. :try_end_43} :catchall_129

    const/4 v14, 0x0

    if-eqz v5, :cond_49

    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-object v14

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :cond_4f
    :try_start_4f
    iput-object v0, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    if-lez v9, :cond_aa

    new-array v14, v9, [B

    iput-object v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    iget-object v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    if-eq v11, v9, :cond_bf

    const-string/jumbo v14, "EFSProperties"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "read side mismatched, lengthAID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", readByteSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_89} :catch_130
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_89} :catch_137
    .catchall {:try_start_4f .. :try_end_89} :catchall_129

    const/4 v14, 0x0

    if-eqz v5, :cond_8f

    :try_start_8c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_a5

    :cond_8f
    :goto_8f
    return-object v14

    :cond_90
    :try_start_90
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "CS Name length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_99} :catch_130
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_137
    .catchall {:try_start_90 .. :try_end_99} :catchall_129

    const/4 v14, 0x0

    if-eqz v5, :cond_9f

    :try_start_9c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    :cond_9f
    :goto_9f
    return-object v14

    :catch_a0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    :catch_a5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    :cond_aa
    :try_start_aa
    const-string/jumbo v14, "EFSProperties"

    const-string/jumbo v15, "AID length is not proper"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b3} :catch_130
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_137
    .catchall {:try_start_aa .. :try_end_b3} :catchall_129

    const/4 v14, 0x0

    if-eqz v5, :cond_b9

    :try_start_b6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    :cond_b9
    :goto_b9
    return-object v14

    :catch_ba
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b9

    :cond_bf
    :try_start_bf
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v12

    iput v12, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_e3} :catch_130
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_e3} :catch_137
    .catchall {:try_start_bf .. :try_end_e3} :catchall_129

    if-eqz v5, :cond_e8

    :try_start_e5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    :cond_e8
    :goto_e8
    return-object v7

    :catch_e9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    :catch_ee
    move-exception v2

    :goto_ef
    :try_start_ef
    const-string/jumbo v14, "loadKeyguardConfig : Exception"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f8
    .catchall {:try_start_ef .. :try_end_f8} :catchall_11a

    const/4 v14, 0x0

    if-eqz v4, :cond_fe

    :try_start_fb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_ff

    :cond_fe
    :goto_fe
    return-object v14

    :catch_ff
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fe

    :catch_104
    move-exception v1

    :goto_105
    :try_start_105
    const-string/jumbo v14, "loadKeyguardConfig : IOException"

    invoke-static {v14}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_11a

    const/4 v14, 0x0

    if-eqz v4, :cond_114

    :try_start_111
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    :cond_114
    :goto_114
    return-object v14

    :catch_115
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_114

    :catchall_11a
    move-exception v14

    :goto_11b
    if-eqz v4, :cond_120

    :try_start_11d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_121

    :cond_120
    :goto_120
    throw v14

    :catch_121
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_120

    :catchall_126
    move-exception v14

    move-object v4, v5

    goto :goto_11b

    :catchall_129
    move-exception v14

    move-object v6, v7

    move-object v4, v5

    goto :goto_11b

    :catch_12d
    move-exception v1

    move-object v4, v5

    goto :goto_105

    :catch_130
    move-exception v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_105

    :catch_134
    move-exception v2

    move-object v4, v5

    goto :goto_ef

    :catch_137
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    goto :goto_ef
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .registers 23

    const-string/jumbo v20, "load ODE config"

    invoke-static/range {v20 .. v20}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    const-string/jumbo v20, "/efs/sec_efs"

    const-string/jumbo v21, "odeConfig"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v20, "ODE config file does not exist"

    invoke-static/range {v20 .. v20}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v20, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v20

    :cond_29
    const/4 v15, 0x0

    const/4 v5, 0x0

    :try_start_2b
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_35c

    :try_start_32
    new-instance v16, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_367

    :try_start_37
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v13

    if-eqz v13, :cond_90

    new-array v0, v13, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v13, :cond_90

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lengthAID : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v14

    if-eqz v14, :cond_139

    new-array v0, v14, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v14, :cond_139

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lengthCsName : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v7

    if-eqz v7, :cond_19c

    new-array v0, v7, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v7, :cond_19c

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenCertAlias : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v8

    if-eqz v8, :cond_1eb

    new-array v0, v8, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v8, :cond_1eb

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenCertLocation : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1eb
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v10

    if-eqz v10, :cond_23a

    new-array v0, v10, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v10, :cond_23a

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenConfiguratorPkgLen : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v9

    if-eqz v9, :cond_289

    new-array v0, v9, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v9, :cond_289

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenConfiguratorDigestLen : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_289
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v12, 0x0

    const/16 v20, 0x0

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int/lit8 v12, v20, 0x0

    const/16 v20, 0x1

    aget-byte v20, v18, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    or-int v12, v12, v20

    if-eqz v12, :cond_304

    new-array v0, v12, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v12, :cond_304

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenScpParamLen : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_304
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v11

    if-lez v11, :cond_353

    new-array v0, v11, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v11, :cond_353

    const-string/jumbo v20, "EFSProperties"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "read side mismatched, lenPluginSignatureHash : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", readByteSize : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_353} :catch_36a

    :cond_353
    move-object v5, v6

    move-object/from16 v15, v16

    :goto_356
    if-eqz v5, :cond_35b

    :try_start_358
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_35b
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_35b} :catch_362

    :cond_35b
    :goto_35b
    return-object v15

    :catch_35c
    move-exception v3

    :goto_35d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v15, 0x0

    goto :goto_356

    :catch_362
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35b

    :catch_367
    move-exception v3

    move-object v5, v6

    goto :goto_35d

    :catch_36a
    move-exception v3

    move-object v5, v6

    move-object/from16 v15, v16

    goto :goto_35d
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .registers 13

    const-string/jumbo v10, "save Keyguard config"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v9, 0x0

    if-nez p0, :cond_10

    const-string/jumbo v10, "KeyguardProperties is null"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v9

    :cond_10
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->checkKeyguardProperty(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v10

    if-nez v10, :cond_1d

    const-string/jumbo v10, "checkKeyguardProperty false"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v9

    :cond_1d
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs"

    const-string/jumbo v11, "keyguardConfig"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string/jumbo v10, "failed to delete the existing Keyguard ODE config file"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v9

    :cond_3b
    const/4 v5, 0x0

    :try_start_3c
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_a7
    .catchall {:try_start_3c .. :try_end_41} :catchall_bc

    :try_start_41
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    array-length v8, v0

    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v10, :cond_85

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    if-lez v10, :cond_85

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    array-length v10, v10

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write([B)V

    :goto_5f
    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V

    iget v10, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_7d} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7d} :catch_ce
    .catchall {:try_start_41 .. :try_end_7d} :catchall_c9

    const/4 v9, 0x1

    if-eqz v6, :cond_83

    :try_start_80
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_a1

    :cond_83
    :goto_83
    move-object v5, v6

    :cond_84
    :goto_84
    return v9

    :cond_85
    const/4 v10, 0x0

    :try_start_86
    invoke-virtual {v6, v10}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_ce
    .catchall {:try_start_86 .. :try_end_89} :catchall_c9

    goto :goto_5f

    :catch_8a
    move-exception v2

    move-object v5, v6

    :goto_8c
    :try_start_8c
    const-string/jumbo v10, "saveKeyguardConfig : IOException"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_bc

    if-eqz v5, :cond_84

    :try_start_97
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_84

    :catch_9b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_9f
    const/4 v9, 0x0

    goto :goto_84

    :catch_a1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_83

    :catch_a7
    move-exception v3

    :goto_a8
    :try_start_a8
    const-string/jumbo v10, "saveKeyguardConfig : Exception"

    invoke-static {v10}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_bc

    if-eqz v5, :cond_84

    :try_start_b3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_84

    :catch_b7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    :catchall_bc
    move-exception v10

    :goto_bd
    if-eqz v5, :cond_c2

    :try_start_bf
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    :cond_c2
    :goto_c2
    throw v10

    :catch_c3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_c2

    :catchall_c9
    move-exception v10

    move-object v5, v6

    goto :goto_bd

    :catch_cc
    move-exception v2

    goto :goto_8c

    :catch_ce
    move-exception v3

    move-object v5, v6

    goto :goto_a8
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .registers 12

    const-string/jumbo v9, "save ODE config"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    if-nez p0, :cond_10

    const-string/jumbo v9, "ODEProperties is null"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v8

    :cond_10
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/efs/sec_efs"

    const-string/jumbo v10, "odeConfig"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v9, "failed to delete the existing ODE config file"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v8

    :cond_2e
    const/4 v4, 0x0

    :try_start_2f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_179
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_17b

    :try_start_34
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v9, :cond_12e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v9, v9

    if-lez v9, :cond_12e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_4d
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v9, :cond_13e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v9, v9

    if-lez v9, :cond_13e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_8e
    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v9, :cond_14e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v9, v9

    if-lez v9, :cond_14e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_ac
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v9, :cond_154

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v9, v9

    if-lez v9, :cond_154

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_c0
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v9, :cond_15a

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v9, v9

    if-lez v9, :cond_15a

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_d4
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v9, :cond_160

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v9, v9

    if-lez v9, :cond_160

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_e8
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v9, :cond_165

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    if-lez v9, :cond_165

    const/4 v9, 0x2

    new-array v7, v9, [B

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v7, v10

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    array-length v9, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    :goto_112
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v9, :cond_16e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v9, v9

    if-lez v9, :cond_16e

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_126
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_126} :catch_134
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_126} :catch_144

    :goto_126
    const/4 v8, 0x1

    move-object v4, v5

    :goto_128
    if-eqz v4, :cond_12d

    :try_start_12a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_173

    :cond_12d
    :goto_12d
    return v8

    :cond_12e
    const/4 v9, 0x0

    :try_start_12f
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_132
    .catch Ljava/io/FileNotFoundException; {:try_start_12f .. :try_end_132} :catch_134
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_144

    goto/16 :goto_4d

    :catch_134
    move-exception v1

    move-object v4, v5

    :goto_136
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    goto :goto_128

    :cond_13e
    const/4 v9, 0x0

    :try_start_13f
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_142
    .catch Ljava/io/FileNotFoundException; {:try_start_13f .. :try_end_142} :catch_134
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_144

    goto/16 :goto_8e

    :catch_144
    move-exception v2

    move-object v4, v5

    :goto_146
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    goto :goto_128

    :cond_14e
    const/4 v9, 0x0

    :try_start_14f
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_ac

    :cond_154
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_c0

    :cond_15a
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto/16 :goto_d4

    :cond_160
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_e8

    :cond_165
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_112

    :cond_16e
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_172
    .catch Ljava/io/FileNotFoundException; {:try_start_14f .. :try_end_172} :catch_134
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_172} :catch_144

    goto :goto_126

    :catch_173
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v8, 0x0

    goto :goto_12d

    :catch_179
    move-exception v1

    goto :goto_136

    :catch_17b
    move-exception v2

    goto :goto_146
.end method
