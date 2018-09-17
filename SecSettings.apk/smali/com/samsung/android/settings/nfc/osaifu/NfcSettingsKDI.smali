.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;
    }
.end annotation


# instance fields
.field private mABeam:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

.field private mUimNfcSupport:Z


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method private refresh()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    const-string/jumbo v2, "[NfcSettingsKDI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh - clfLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uimLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkUIMSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateNfcLock(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateRwP2p(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateABeam(II)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumChange(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumInit(I)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateTapAndPay(II)V

    return-void
.end method

.method private updateABeam(II)V
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_23
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_66
    .catchall {:try_start_23 .. :try_end_34} :catchall_6e

    move-result v0

    if-eqz v0, :cond_38

    const/4 v8, 0x0

    :cond_38
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    if-gt v0, p1, :cond_73

    const/4 v0, 0x3

    if-gt p1, v0, :cond_73

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b7d

    :cond_4a
    :goto_4a
    if-eqz v10, :cond_51

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_51
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x2

    if-gt v0, p2, :cond_65

    const/4 v0, 0x3

    if-gt p2, v0, :cond_65

    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_65
    return-void

    :catch_66
    move-exception v6

    :try_start_67
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    :catchall_6e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_73
    const/16 v0, 0x40

    if-ne p2, v0, :cond_81

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121300

    goto :goto_4a

    :cond_81
    if-nez p1, :cond_c2

    if-nez p2, :cond_c2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v9

    const/16 v0, 0xd

    if-ne v9, v0, :cond_b4

    if-eqz v8, :cond_a9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_9d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_b0

    const v10, 0x7f121b7e

    goto :goto_4a

    :cond_a9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_9d

    :cond_b0
    const v10, 0x7f121b7d

    goto :goto_4a

    :cond_b4
    const/16 v0, 0xb

    if-ne v9, v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b7d

    goto :goto_4a

    :cond_c2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b7d

    goto/16 :goto_4a
.end method

.method private updateLockNumChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x40

    if-ne p1, v0, :cond_14

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    if-gt v0, p1, :cond_22

    const/4 v0, 0x3

    if-le p1, v0, :cond_d

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_13
.end method

.method private updateLockNumInit(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x40

    if-ne p1, v0, :cond_14

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    if-gt v0, p1, :cond_22

    const/4 v0, 0x3

    if-le p1, v0, :cond_d

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_13
.end method

.method private updateNfcLock(II)V
    .registers 10

    const/16 v6, 0x100

    const/16 v5, 0x40

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    if-ne p2, v5, :cond_2f

    const v0, 0x7f121300

    :goto_12
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_19
    if-eq p2, v5, :cond_29

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_29
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2e
    return-void

    :cond_2f
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkSimMno()Z

    move-result v1

    if-eqz v1, :cond_45

    if-nez p1, :cond_41

    const v0, 0x7f121303

    goto :goto_12

    :cond_41
    const v0, 0x7f121304

    goto :goto_12

    :cond_45
    if-nez p1, :cond_4b

    const v0, 0x7f121301

    goto :goto_12

    :cond_4b
    const v0, 0x7f121302

    goto :goto_12

    :cond_4f
    if-ne p1, v6, :cond_57

    if-ne p2, v6, :cond_57

    const v0, 0x7f121b7d

    goto :goto_12

    :cond_57
    if-nez p1, :cond_5f

    if-nez p2, :cond_5f

    const v0, 0x7f121b7d

    goto :goto_12

    :cond_5f
    const v0, 0x7f121b7e

    goto :goto_12

    :cond_63
    if-gt v3, p2, :cond_67

    if-le p2, v4, :cond_29

    :cond_67
    if-gt v3, p1, :cond_71

    if-gt p1, v4, :cond_71

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2e

    :cond_71
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2e
.end method

.method private updateRwP2p(II)V
    .registers 15

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v11, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

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
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_23 .. :try_end_34} :catch_9a
    .catchall {:try_start_23 .. :try_end_34} :catchall_a2

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

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

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
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_57 .. :try_end_68} :catch_a7
    .catchall {:try_start_57 .. :try_end_68} :catchall_af

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v8, 0x0

    :cond_6c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6f
    :goto_6f
    const/4 v0, 0x1

    if-gt v0, p1, :cond_b4

    const/4 v0, 0x3

    if-gt p1, v0, :cond_b4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121b7d

    :cond_7e
    :goto_7e
    if-eqz v11, :cond_85

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_85
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_93

    const/4 v0, 0x2

    if-gt v0, p2, :cond_99

    const/4 v0, 0x3

    if-gt p2, v0, :cond_99

    :cond_93
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_99
    return-void

    :catch_9a
    move-exception v6

    :try_start_9b
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    :catchall_a2
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_a7
    move-exception v6

    :try_start_a8
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_af

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    :catchall_af
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b4
    if-nez v8, :cond_e4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xb

    if-ne v10, v0, :cond_d3

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b7d

    goto :goto_7e

    :cond_d3
    const/16 v0, 0xd

    if-ne v10, v0, :cond_7e

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b7e

    goto :goto_7e

    :cond_e4
    const/16 v0, 0x40

    if-ne p2, v0, :cond_f2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121300

    goto :goto_7e

    :cond_f2
    if-nez p1, :cond_114

    if-nez p2, :cond_114

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xd

    if-ne v10, v0, :cond_10b

    const v11, 0x7f121b7e

    goto/16 :goto_7e

    :cond_10b
    const/16 v0, 0xb

    if-ne v10, v0, :cond_7e

    const v11, 0x7f121b7d

    goto/16 :goto_7e

    :cond_114
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121b7d

    goto/16 :goto_7e
.end method

.method private updateTapAndPay(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/16 v0, 0x40

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_f
    return-void

    :cond_10
    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_f

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_f
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.intent.action.NFC_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method
