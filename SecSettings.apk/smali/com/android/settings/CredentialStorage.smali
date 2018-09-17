.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings/CredentialStorage$ResetDialog;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
    }
.end annotation


# static fields
.field private static final synthetic -android-security-KeyStore$StateSwitchesValues:[I


# instance fields
.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mNeedCallResetDialog:Z

.field private mRetriesRemaining:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v0
.end method

.method private static synthetic -getandroid-security-KeyStore$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/CredentialStorage;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CredentialStorage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->clearLegacyVpnIfEstablished()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mNeedCallResetDialog:Z

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_22

    :goto_21
    return v5

    :cond_22
    move v5, v6

    goto :goto_21

    :cond_24
    :try_start_24
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3d

    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3d
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_48

    return v6

    :cond_48
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4b} :catch_64

    move-result v1

    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_63

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_66

    :cond_63
    return v6

    :catch_64
    move-exception v3

    return v6

    :cond_66
    return v5
.end method

.method private checkKeyGuardQuality()Z
    .registers 5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_1b

    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private clearLegacyVpnIfEstablished()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v1, 0x7f121e11

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_15
    return-void
.end method

.method private confirmKeyGuard(I)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f120678

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private ensureKeyGuard()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void
.end method

.method private handleUnlockOrInstall()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/settings/CredentialStorage;->-getandroid-security-KeyStore$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    return-void

    :pswitch_1b
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void

    :pswitch_1f
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void

    :pswitch_23
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    return-void

    :cond_30
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1b
        :pswitch_23
    .end packed-switch
.end method

.method private installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 25

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "user_private_key_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    :cond_21
    const/4 v12, 0x0

    const-string/jumbo v2, "user_certificate_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "user_certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    :cond_36
    const/4 v10, 0x0

    const-string/jumbo v2, "ca_certificates_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "ca_certificates_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    :cond_4b
    if-eqz v12, :cond_1aa

    if-eqz v19, :cond_1aa

    if-eqz p2, :cond_5d

    :try_start_51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5d

    const/16 p2, 0x0

    :cond_5d
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "USRPKEY_"

    const-string/jumbo v5, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const-string/jumbo v2, "install_as_uid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x3f2

    if-ne v2, v5, :cond_161

    const/4 v2, 0x1

    :goto_89
    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-object v8, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "keystorekeychain"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_a3

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a3
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    const/4 v15, 0x2

    const/16 v9, 0x80

    invoke-static {v12}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v11

    const/16 v21, 0x0

    if-eqz p2, :cond_c1

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c1
    new-array v0, v15, [B

    move-object/from16 v17, v0

    const-string/jumbo v2, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pKeyBytes length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    if-eqz v10, :cond_164

    array-length v2, v12

    array-length v5, v10

    add-int v13, v2, v5

    const-string/jumbo v2, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "caCert is not null, certLen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_103
    rem-int/lit16 v2, v13, 0x80

    int-to-byte v2, v2

    const/4 v5, 0x0

    aput-byte v2, v17, v5

    div-int/lit16 v2, v13, 0x80

    int-to-byte v2, v2

    const/4 v5, 0x1

    aput-byte v2, v17, v5

    const-string/jumbo v2, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " lenBytes[0] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v17, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lenBytes[1]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v17, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz v10, :cond_152

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_152
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v2, :cond_18f

    const/4 v2, 0x0

    return v2

    :cond_161
    const/4 v2, 0x0

    goto/16 :goto_89

    :cond_164
    array-length v13, v12

    const-string/jumbo v2, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "caCert is null, certLen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_17f} :catch_180

    goto :goto_103

    :catch_180
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing certificate into CCM"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_18f
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing private key into CCM, installObjectWithProfile returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1a8} :catch_180

    const/4 v2, 0x0

    return v2

    :cond_1aa
    const/4 v2, 0x1

    return v2
.end method

.method private installIfAvailable()V
    .registers 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Bundle;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_15

    :cond_14
    return-void

    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const-string/jumbo v26, "install_as_uid"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const-string/jumbo v26, "senderpackagename"

    const-string/jumbo v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "PackageName from CredentialStorage : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_d2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v26

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_d2

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    const/16 v26, 0x3f2

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_af

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install credentials as uid "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ": cross-user installs"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " may only target wifi uids"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v27, "com.android.credentials.INSTALL"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v27, 0x2000000

    invoke-virtual/range {v26 .. v27}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_d2
    invoke-static/range {v19 .. v19}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1bc

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "CCM and TimaKeystore is enabled for this package : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v26, "knox_ccm_policy"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/android/settings/CredentialStorage;->installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_11b

    const-string/jumbo v26, "CredentialStorage"

    const-string/jumbo v27, "installCertificateinCCM failed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11b
    :try_start_11b
    const-string/jumbo v26, "user_private_key_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_153

    const-string/jumbo v26, "USRPKEY_"

    const-string/jumbo v27, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_153

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v5, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setGrant(ILjava/lang/String;Z)V
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_153} :catch_1ad

    :cond_153
    :goto_153
    const/4 v14, 0x0

    const-string/jumbo v26, "ca_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_33e

    const-string/jumbo v26, "ca_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v26, "ca_certificates_data"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v9, v8, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v26

    if-nez v26, :cond_33e

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " as uid "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1ad
    move-exception v13

    const-string/jumbo v26, "CredentialStorage"

    const-string/jumbo v27, "Failed at ClientCertificateManager API setGrant-Exception "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_153

    :cond_1bc
    const-string/jumbo v26, "user_private_key_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_238

    const-string/jumbo v26, "user_private_key_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v26, "user_private_key_data"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v21

    const/4 v14, 0x1

    const/16 v26, 0x3f2

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v26

    if-eqz v26, :cond_1f6

    const-string/jumbo v26, "CredentialStorage"

    const-string/jumbo v27, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :cond_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v26

    if-nez v26, :cond_238

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " as uid "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_238
    const/4 v14, 0x0

    const-string/jumbo v26, "user_certificate_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_292

    const-string/jumbo v26, "user_certificate_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v26, "user_certificate_data"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v11, v10, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v26

    if-nez v26, :cond_292

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " as uid "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_292
    sget-boolean v26, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v26, :cond_153

    const-string/jumbo v26, "wapi_as_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2ea

    const-string/jumbo v26, "wapi_as_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v26, "wapi_as_certificates_data"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v26

    if-nez v26, :cond_2ea

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2ea
    const-string/jumbo v26, "wapi_user_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_153

    const-string/jumbo v26, "wapi_user_certificates_name"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "wapi_user_certificates_data"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v26

    if-nez v26, :cond_153

    const-string/jumbo v26, "CredentialStorage"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to install "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33e
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v26, "android.security.action.KEYCHAIN_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/CredentialStorage;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .registers 9

    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lsun/security/x509/AlgorithmId;

    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_31

    move-result v5

    return v5

    :catch_31
    move-exception v3

    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_20

    if-ne p2, v2, :cond_1c

    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    if-ne p2, v2, :cond_32

    new-instance v1, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_32
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_1f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/CredentialStorage;->overridePendingTransition(II)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mNeedCallResetDialog:Z

    const-string/jumbo v0, "CredentialStorage"

    const-string/jumbo v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v3, "CredentialStorage"

    const-string/jumbo v4, "onResume called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string/jumbo v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/settings/CredentialStorage;->mNeedCallResetDialog:Z

    if-eqz v3, :cond_3c

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/CredentialStorage;->mNeedCallResetDialog:Z

    new-instance v3, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetDialog;)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    const-string/jumbo v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    :cond_52
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_3c

    :cond_56
    const-string/jumbo v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_6d

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_3c

    :cond_6d
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_3c
.end method
