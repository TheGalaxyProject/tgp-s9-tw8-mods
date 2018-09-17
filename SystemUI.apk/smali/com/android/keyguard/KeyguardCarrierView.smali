.class public Lcom/android/keyguard/KeyguardCarrierView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardCarrierView$1;,
        Lcom/android/keyguard/KeyguardCarrierView$2;
    }
.end annotation


# static fields
.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowingOwnerCallButton:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerCallButton:Landroid/widget/Button;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephony:Landroid/telephony/TelephonyManager;

.field private mUnlockButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardCarrierView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardCarrierView;I)I
    .registers 2

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardCarrierView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardCarrierView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setCarrierLockPlusInfo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardCarrierView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardCarrierView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardCarrierView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->updateButtonVisibility(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/keyguard/KeyguardCarrierView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardCarrierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    const-string/jumbo v2, "0000"

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    new-instance v2, Lcom/android/keyguard/KeyguardCarrierView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardCarrierView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/keyguard/KeyguardCarrierView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardCarrierView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->registerPhoneStateListener()V

    return-void
.end method

.method private getCarrierLockPlusPassword()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isCarrierLockENCVersion()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardCarrierView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    return-object v3

    :cond_2e
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_3e
    const-string/jumbo v3, "KeyguardCarrierView"

    const-string/jumbo v4, "getCarrierLockPlusPassword(), passowrd is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_47} :catch_48

    return-object v7

    :catch_48
    move-exception v2

    const-string/jumbo v3, "KeyguardCarrierView"

    const-string/jumbo v4, "getCarrierLockPlusPassword(), IOException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v7
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string/jumbo v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private isCarrierLockENCVersion()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private registerPhoneStateListener()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_21
    return-void
.end method

.method private setCarrierLockPlusInfo()V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->getCarrierLockPlusPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->updateCarrierLockPlusMessage()V

    return-void
.end method

.method private setVisibleOwnerCallButton()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_53

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    :cond_10
    if-eqz v0, :cond_3d

    const-string/jumbo v1, "KeyguardCarrierView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVisibleOwnerCallButton state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", CallButton ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_54

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    if-eqz v1, :cond_54

    iget v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_54

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_53
.end method

.method private unregisterPhoneStateListener()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_10
    return-void
.end method

.method private updateButtonVisibility(I)V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_18
.end method

.method private updateCarrierLockPlusMessage()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isCarrierLockENCVersion()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardCarrierView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    :goto_38
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerMessage:Ljava/lang/String;

    :goto_4c
    return-void

    :cond_4d
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_5d
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_60} :catch_61

    goto :goto_38

    :catch_61
    move-exception v2

    const-string/jumbo v3, "KeyguardCarrierView"

    const-string/jumbo v4, "updateCarrierLockPlusMessage(), IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :cond_6f
    :try_start_6f
    const-string/jumbo v3, "KeyguardCarrierView"

    const-string/jumbo v4, "updateCarrierLockPlusMessage(), message is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_61

    goto :goto_4c
.end method


# virtual methods
.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v9, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardCarrierView;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v9

    sget-object v10, Lcom/android/keyguard/KeyguardCarrierView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v11, 0x2

    invoke-virtual {v1, v11, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v9, 0x0

    invoke-static {p2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_22} :catch_a4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_22} :catch_84
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_22} :catch_64
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_22} :catch_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    move-object v7, v8

    :goto_23
    return-object v7

    :catch_24
    move-exception v2

    const-string/jumbo v9, "KeyguardCarrierView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_44
    move-exception v3

    const-string/jumbo v9, "KeyguardCarrierView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_64
    move-exception v4

    const-string/jumbo v9, "KeyguardCarrierView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_84
    move-exception v6

    const-string/jumbo v9, "KeyguardCarrierView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_a4
    move-exception v5

    const-string/jumbo v9, "KeyguardCarrierView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardCarrierView_6328(Landroid/view/View;)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v3, "tel"

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "KeyguardCarrierView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardCarrierView_6926(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_13
    return-void
.end method

.method public needsInput()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->unregisterPhoneStateListener()V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string/jumbo v2, "KeyguardCarrierView"

    const-string/jumbo v3, "onFinishInflate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setCarrierLockPlusInfo()V

    const v2, 0x7f0a00cc

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    const v2, 0x7f0a00cb

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    const v2, 0x7f0a00ce

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f0a00c8

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_45
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerMessage:Ljava/lang/String;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/-$Lambda$8HpOCX-czRDQ8N9TlNIc-ybLUlQ;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$Lambda$8HpOCX-czRDQ8N9TlNIc-ybLUlQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    :cond_65
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/-$Lambda$8HpOCX-czRDQ8N9TlNIc-ybLUlQ$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$Lambda$8HpOCX-czRDQ8N9TlNIc-ybLUlQ$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_73
    const v2, 0x7f0a00cd

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_92

    sget v2, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_92
    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierView;->setKeepScreenOn(Z)V

    :cond_a
    return-void
.end method

.method public onResume(I)V
    .registers 2

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x400000

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1f
    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public showPromptReason(I)V
    .registers 2

    return-void
.end method

.method public startAppearAnimation()V
    .registers 1

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
