.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
.super Ljava/lang/Object;
.source "NfcSettingsData.java"


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field public static final MNO:Ljava/lang/String;

.field private static final OMC_SALES_CODE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRceciverContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->CSC_SALES_CODE:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_21
    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_23
    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    return-void

    :cond_26
    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_23
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mRceciverContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public checkSimMno()Z
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[NfcSettingsData]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SIM MCC MNC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_4d

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x1b8

    if-eq v0, v3, :cond_43

    const/16 v3, 0x1b9

    if-ne v0, v3, :cond_4d

    :cond_43
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4d

    const/16 v3, 0x14

    if-eq v1, v3, :cond_4d

    const/4 v3, 0x1

    return v3

    :cond_4d
    return v6
.end method

.method public checkUIMSupport()Z
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/efs/sec_efs/FeliCaLock/05"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v3, "[NfcSettingsData]"

    const-string/jumbo v4, "UIM does not have NFC lock function"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x1

    goto :goto_18

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getABeamStatus()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_f

    const-string/jumbo v0, "[NfcSettingsData]"

    const-string/jumbo v1, "mNfcAdapter is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    return v0
.end method

.method public getCLFLockState()I
    .registers 9

    const/16 v4, 0x100

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v5, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_b} :catch_53
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_3c
    .catchall {:try_start_3 .. :try_end_b} :catchall_68

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4

    const-string/jumbo v5, "[NfcSettingsData]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCLFLockState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_29} :catch_77
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_7a
    .catchall {:try_start_b .. :try_end_29} :catchall_74

    if-ltz v4, :cond_2e

    const/4 v5, 0x3

    if-ge v5, v4, :cond_30

    :cond_2e
    const/16 v4, 0x100

    :cond_30
    if-eqz v3, :cond_35

    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_37

    :cond_35
    :goto_35
    move-object v2, v3

    :cond_36
    :goto_36
    return v4

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catch_3c
    move-exception v1

    :goto_3d
    :try_start_3d
    const-string/jumbo v5, "[NfcSettingsData]"

    const-string/jumbo v6, "IOException!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_68

    const/16 v4, 0x100

    if-eqz v2, :cond_36

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_36

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    :catch_53
    move-exception v0

    :goto_54
    :try_start_54
    const-string/jumbo v5, "[NfcSettingsData]"

    const-string/jumbo v6, "FileNotFoundException!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_68

    if-eqz v2, :cond_36

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_36

    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    :catchall_68
    move-exception v5

    :goto_69
    if-eqz v2, :cond_6e

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    throw v5

    :catch_6f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    :catchall_74
    move-exception v5

    move-object v2, v3

    goto :goto_69

    :catch_77
    move-exception v0

    move-object v2, v3

    goto :goto_54

    :catch_7a
    move-exception v1

    move-object v2, v3

    goto :goto_3d
.end method

.method public getKDIRemoteLockState()Z
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "KDI"

    sget-object v2, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    const-string/jumbo v1, "persist.nfc.remotelock"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    const-string/jumbo v1, "[NfcSettingsData]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKDIRemoteLockState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNfcTypeSettings()I
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getListenMode()I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_33

    const/4 v1, 0x0

    :cond_11
    :goto_11
    const-string/jumbo v2, "[NfcSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNfcTypeSettings ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    and-int/lit8 v2, v0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    goto :goto_11

    :cond_3a
    and-int/lit8 v2, v0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    const/4 v1, 0x2

    goto :goto_11
.end method

.method public getRWP2pStatus()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_10

    const-string/jumbo v0, "[NfcSettingsData]"

    const-string/jumbo v1, "mNfcAdapter is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    return v0

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result v0

    return v0
.end method

.method public getUIMLockState()I
    .registers 9

    const/16 v4, 0x100

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v5, "/efs/sec_efs/FeliCaLock/03"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_55
    .catchall {:try_start_3 .. :try_end_b} :catchall_81

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4

    const-string/jumbo v5, "[NfcSettingsData]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUIMLockState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_29} :catch_90
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_93
    .catchall {:try_start_b .. :try_end_29} :catchall_8d

    const/16 v5, 0x10

    if-eq v4, v5, :cond_31

    const/16 v5, 0x20

    if-ne v4, v5, :cond_39

    :cond_31
    const/4 v4, 0x0

    :cond_32
    :goto_32
    if-eqz v3, :cond_37

    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_50

    :cond_37
    :goto_37
    move-object v2, v3

    :cond_38
    :goto_38
    return v4

    :cond_39
    const/16 v5, 0x40

    if-ne v4, v5, :cond_48

    :try_start_3d
    const-string/jumbo v5, "KDI"

    sget-object v6, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_45} :catch_90
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_45} :catch_93
    .catchall {:try_start_3d .. :try_end_45} :catchall_8d

    move-result v5

    if-nez v5, :cond_32

    :cond_48
    if-ltz v4, :cond_4d

    const/4 v5, 0x3

    if-ge v5, v4, :cond_32

    :cond_4d
    const/16 v4, 0x100

    goto :goto_32

    :catch_50
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catch_55
    move-exception v1

    :goto_56
    :try_start_56
    const-string/jumbo v5, "[NfcSettingsData]"

    const-string/jumbo v6, "IOException!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_81

    const/16 v4, 0x100

    if-eqz v2, :cond_38

    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_38

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :catch_6c
    move-exception v0

    :goto_6d
    :try_start_6d
    const-string/jumbo v5, "[NfcSettingsData]"

    const-string/jumbo v6, "FileNotFoundException!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_81

    if-eqz v2, :cond_38

    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_38

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :catchall_81
    move-exception v5

    :goto_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    throw v5

    :catch_88
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    :catchall_8d
    move-exception v5

    move-object v2, v3

    goto :goto_82

    :catch_90
    move-exception v0

    move-object v2, v3

    goto :goto_6d

    :catch_93
    move-exception v1

    move-object v2, v3

    goto :goto_56
.end method

.method public setABeamStatus(Z)Z
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_f

    const-string/jumbo v1, "[NfcSettingsData]"

    const-string/jumbo v2, "mNfcAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_f
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_18
.end method

.method public setNfcTypeSettings(I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_60

    const/4 v0, 0x7

    const-string/jumbo v2, "[NfcSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[*] setNfcTypeSettings Param NG ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->setListenMode(I)I

    move-result v1

    :cond_31
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const/4 v2, 0x0

    return v2

    :pswitch_36
    const/4 v0, 0x7

    goto :goto_27

    :pswitch_38
    const/4 v0, 0x5

    goto :goto_27

    :pswitch_3a
    const/4 v0, 0x6

    goto :goto_27

    :cond_3c
    const-string/jumbo v2, "[NfcSettingsData]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNfcTypeSettings ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_36
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method

.method public setRWP2pStatus(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_f

    const-string/jumbo v0, "[NfcSettingsData]"

    const-string/jumbo v1, "mNfcAdapter is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->setRwP2pMode(Z)Z

    move-result v0

    return v0
.end method
