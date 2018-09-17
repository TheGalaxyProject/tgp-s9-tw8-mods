.class public Lcom/samsung/android/settings/EFSProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;,
        Lcom/samsung/android/settings/EFSProperties$ODEProperties;
    }
.end annotation


# static fields
.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPES:[Ljava/lang/String;


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

    sput-object v0, Lcom/samsung/android/settings/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SCP11a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SCP11b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SCPCustom"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/settings/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadKeyguardConfig()Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;
    .registers 17

    const-string/jumbo v14, "load Keyguard config"

    invoke-static {v14}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v14, "/efs/sec_efs"

    const-string/jumbo v15, "keyguardConfig"

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    const-string/jumbo v14, "Keyguard config file does not exist"

    invoke-static {v14}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

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
    new-instance v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    invoke-direct {v7}, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;-><init>()V
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
    iput-object v0, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    if-lez v9, :cond_aa

    new-array v14, v9, [B

    iput-object v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->AID:[B

    iget-object v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->AID:[B

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

    iput v12, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v14

    iput v14, v7, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I
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

    invoke-static {v14}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

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

    invoke-static {v14}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

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

.method public static loadODEConfig()Lcom/samsung/android/settings/EFSProperties$ODEProperties;
    .registers 23

    const-string/jumbo v20, "load ODE config"

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

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

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v20, Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/settings/EFSProperties$ODEProperties;-><init>()V

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
    new-instance v16, Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/settings/EFSProperties$ODEProperties;-><init>()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_367

    :try_start_37
    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v13

    if-eqz v13, :cond_90

    new-array v0, v13, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->AID:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->AID:[B

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

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v14

    if-eqz v14, :cond_139

    new-array v0, v14, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->csName:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->csName:[B

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

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v7

    if-eqz v7, :cond_19c

    new-array v0, v7, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertAlias:[B

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

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->CertLocation:[B

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

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->cofiguratorPkg:[B

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

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->cofiguratorSign:[B

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

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->scpCreationParam:[B

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

    iput-object v0, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pluginSignatureHash:[B

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
