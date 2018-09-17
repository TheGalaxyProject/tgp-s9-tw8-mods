.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsDCM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;
    }
.end annotation


# static fields
.field private static isNfcTypeBF:Z


# instance fields
.field private mABeam:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mNfcType:Landroid/support/v7/preference/PreferenceScreen;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Landroid/support/v7/preference/PreferenceScreen;

.field private mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->refresh(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->isNfcTypeBF:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method private refresh(II)V
    .registers 6

    const-string/jumbo v0, "[NfcSettingsDCM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh - clfLockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uimLockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateNfcLock(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateNfcType(II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateRwP2p(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateABeam(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateTapAndPay(I)V

    return-void
.end method

.method private setDisabledBeamSettings()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setABeamStatus(Z)Z

    :cond_a
    return-void
.end method

.method private updateABeam(I)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_25
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_25 .. :try_end_36} :catch_52
    .catchall {:try_start_25 .. :try_end_36} :catchall_5a

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v8, 0x0

    :cond_3a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    if-gt v11, p1, :cond_5f

    const/4 v0, 0x3

    if-gt p1, v0, :cond_5f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v9, 0x7f121b7d

    :cond_4a
    :goto_4a
    if-eqz v9, :cond_51

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_51
    return-void

    :catch_52
    move-exception v6

    :try_start_53
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_5a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_87

    const v9, 0x7f121b7e

    :goto_6f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_81

    xor-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_81

    sget-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->isNfcTypeBF:Z

    if-eqz v0, :cond_4a

    :cond_81
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_4a

    :cond_87
    const v9, 0x7f121b7d

    goto :goto_6f
.end method

.method private updateNfcLock(II)V
    .registers 9

    const/16 v5, 0x100

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    if-ne p1, v5, :cond_1a

    if-ne p2, v5, :cond_1a

    const v0, 0x7f1212af

    :goto_12
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_19
    return-void

    :cond_1a
    if-gt v3, p2, :cond_2a

    if-gt p2, v4, :cond_2a

    if-gt v3, p1, :cond_26

    if-gt p1, v4, :cond_26

    const v0, 0x7f1212bb

    goto :goto_12

    :cond_26
    const v0, 0x7f1212bd

    goto :goto_12

    :cond_2a
    if-gt v3, p1, :cond_32

    if-gt p1, v4, :cond_32

    const v0, 0x7f1212b9

    goto :goto_12

    :cond_32
    if-ne p1, v2, :cond_3e

    if-ne p2, v2, :cond_3a

    const v0, 0x7f1212b5

    goto :goto_12

    :cond_3a
    const v0, 0x7f1212b1

    goto :goto_12

    :cond_3e
    if-ne p2, v2, :cond_44

    const v0, 0x7f1212b7

    goto :goto_12

    :cond_44
    const v0, 0x7f1212af

    goto :goto_12
.end method

.method private updateNfcType(II)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v6, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getNfcTypeSettings()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f1212fa

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f1212fb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    if-nez v0, :cond_69

    const v6, 0x7f1212fd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-boolean v9, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->isNfcTypeBF:Z

    :cond_37
    :goto_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    if-le v8, p1, :cond_63

    if-gt v8, p2, :cond_68

    :cond_63
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_68
    return-void

    :cond_69
    if-ne v0, v8, :cond_75

    const v6, 0x7f1212fe

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-boolean v9, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->isNfcTypeBF:Z

    goto :goto_37

    :cond_75
    const/4 v6, 0x2

    if-ne v0, v6, :cond_37

    const v6, 0x7f1212ff

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->setDisabledBeamSettings()V

    sput-boolean v8, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->isNfcTypeBF:Z

    goto :goto_37
.end method

.method private updateRwP2p(I)V
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v11, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCEnabled"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_23
    const-string/jumbo v0, "isNFCEnabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_86
    .catchall {:try_start_23 .. :try_end_34} :catchall_8e

    move-result v0

    if-eqz v0, :cond_38

    const/4 v8, 0x0

    :cond_38
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_57
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_68
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_57 .. :try_end_68} :catch_93
    .catchall {:try_start_57 .. :try_end_68} :catchall_9b

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v8, 0x0

    :cond_6c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6f
    :goto_6f
    const/4 v0, 0x1

    if-gt v0, p1, :cond_a0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121b7d

    :cond_7e
    :goto_7e
    if-eqz v11, :cond_85

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_85
    return-void

    :catch_86
    move-exception v6

    :try_start_87
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    :catchall_8e
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_93
    move-exception v6

    :try_start_94
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    :catchall_9b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a0
    if-nez v8, :cond_d0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xb

    if-ne v10, v0, :cond_bf

    const-string/jumbo v0, "[NfcSettingsDCM]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b7d

    goto :goto_7e

    :cond_bf
    const/16 v0, 0xd

    if-ne v10, v0, :cond_7e

    const-string/jumbo v0, "[NfcSettingsDCM]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b7e

    goto :goto_7e

    :cond_d0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xd

    if-ne v10, v0, :cond_e4

    const v11, 0x7f121b7e

    goto :goto_7e

    :cond_e4
    const/16 v0, 0xb

    if-ne v10, v0, :cond_7e

    const v11, 0x7f121b7d

    goto :goto_7e
.end method

.method private updateTapAndPay(I)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-gt v1, p1, :cond_12

    const/4 v0, 0x3

    if-gt p1, v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_11
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "[NfcSettingsDCM]"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNewModel:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "[NfcSettingsDCM]"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 6

    const-string/jumbo v2, "[NfcSettingsDCM]"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->refresh(II)V

    return-void
.end method
