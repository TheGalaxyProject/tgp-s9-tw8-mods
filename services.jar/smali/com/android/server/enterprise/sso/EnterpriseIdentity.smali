.class public Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;,
        Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final AUTH_CONF_DATA_FILENAME:Ljava/lang/String; = "authconfig.xml"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DEBUG:Z

.field private static final EID_PASSWORD_TOKEN:Ljava/lang/String; = "password_token"

.field private static final EID_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password_token_handle"

.field private static final EID_PASSWORD_TOKEN_KEY:Ljava/lang/String; = "password_token_key"

.field public static final EID_TOKEN:Ljava/lang/String; = "eid_reset_password_token"

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final IS_CONFIGURED_BY_MDM:Ljava/lang/String; = "isConfiguredByMDM"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYWORD_AUTHPROVIDER:Ljava/lang/String; = "authenticationprovider"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_STORE_ALIAS:Ljava/lang/String; = "KnoxEIDTokenKey"

.field private static final KNOXEID_SECRETKEY_FILE:Ljava/lang/String; = "KnoxEID_SCKF"

.field private static final KNOX_USERX_AUTHCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NETWORK_AUTH_FORCE_STATE:Ljava/lang/String; = "network_auth_force_state"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "EnterpriseIdentity"

.field private static final USERAUTHENTICATION:I = 0x4

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static authenticationConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    return-void
.end method

.method private _setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 24

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v2

    if-nez v2, :cond_9

    const/16 v18, -0x1

    return v18

    :cond_9
    const/4 v10, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v14, 0x0

    if-nez v7, :cond_2b4

    const-string/jumbo v18, "authenticationprovider"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_30

    const-string/jumbo v18, "servicepackagename"

    move-object/from16 v0, v18

    invoke-interface {v14, v0, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4c

    const-string/jumbo v18, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_28c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v18

    if-eqz v18, :cond_28c

    const-string/jumbo v18, "EnterpriseIdentity"

    const-string/jumbo v19, "In _setAuthenticationConfig: Incorrect configuration. Both hide and enforce set to true."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "hideEnterpriseIDLock"

    const-string/jumbo v19, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    const-string/jumbo v19, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_2a5

    const-string/jumbo v18, "true"

    :goto_7a
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v18

    if-eqz v18, :cond_2aa

    const-string/jumbo v18, "true"

    :goto_8d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v18

    if-eqz v18, :cond_2af

    const-string/jumbo v18, "true"

    :goto_a0
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig AUTHENTICATOR_PACKAGE_NAME:   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "servicepackagename"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig FORCE_ENTERPRISE_IDENTITY_LOCK:   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "forceEnterpriseIDLock"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig HIDE_ENTERPRISE_ID_LOCK:   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "hideEnterpriseIDLock"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig ENFORCE_REMOTE_AUTH_ALWAYS:   "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "enforceRemoteAuthAlways"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig IS_CONFIGURED_BY_MDM:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "isConfiguredByMDM"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_156
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v18

    if-nez v18, :cond_370

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16c
    :goto_16c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_370

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Key = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16c

    sget-object v18, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16c

    sget-object v18, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16c

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_16c

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    if-nez v15, :cond_1dc

    iget-object v0, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    if-nez v10, :cond_36b

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1dc
    :goto_1dc
    const-string/jumbo v18, "value"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v18, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v18, :cond_16c

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "In _setAuthenticationConfig:  <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "> parameter for - packageName "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is added"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22b} :catch_22d

    goto/16 :goto_16c

    :catch_22d
    move-exception v4

    const-string/jumbo v18, "EnterpriseIdentity"

    const-string/jumbo v19, "In setAuthenticationConfig: Exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23b
    const/4 v13, 0x0

    :try_start_23c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->provisionResetPasswordToken(I)Z
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_23f} :catch_3a2

    move-result v13

    :goto_240
    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Token to reset password provisioned:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_3c1

    sget-object v18, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_289

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_289

    sget-boolean v18, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v18, :cond_289

    const-string/jumbo v18, "EnterpriseIdentity"

    const-string/jumbo v19, "In _setAuthenticationConfig : file is not removed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_289
    const/16 v18, -0x1

    return v18

    :cond_28c
    :try_start_28c
    const-string/jumbo v19, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_2a1

    const-string/jumbo v18, "true"

    :goto_298
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6e

    :cond_2a1
    const-string/jumbo v18, "false"

    goto :goto_298

    :cond_2a5
    const-string/jumbo v18, "false"

    goto/16 :goto_7a

    :cond_2aa
    const-string/jumbo v18, "false"

    goto/16 :goto_8d

    :cond_2af
    const-string/jumbo v18, "false"

    goto/16 :goto_a0

    :cond_2b4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeAll(Lorg/w3c/dom/Node;)V

    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2cd

    const-string/jumbo v18, "servicepackagename"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2cd
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2e9

    const-string/jumbo v18, "servicepackagesignature"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_347

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v18

    if-eqz v18, :cond_347

    const-string/jumbo v18, "EnterpriseIdentity"

    const-string/jumbo v19, "In _setAuthenticationConfig when node not null: Incorrect configuration. Both hide and enforce set to true."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "hideEnterpriseIDLock"

    const-string/jumbo v19, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30b
    const-string/jumbo v19, "forceEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_35f

    const-string/jumbo v18, "true"

    :goto_317
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "enforceRemoteAuthAlways"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceRemoteAuthAlways()Z

    move-result v18

    if-eqz v18, :cond_363

    const-string/jumbo v18, "true"

    :goto_32a
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "isConfiguredByMDM"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v18

    if-eqz v18, :cond_367

    const-string/jumbo v18, "true"

    :goto_33d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_156

    :cond_347
    const-string/jumbo v19, "hideEnterpriseIDLock"

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v18

    if-eqz v18, :cond_35b

    const-string/jumbo v18, "true"

    :goto_353
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30b

    :cond_35b
    const-string/jumbo v18, "false"

    goto :goto_353

    :cond_35f
    const-string/jumbo v18, "false"

    goto :goto_317

    :cond_363
    const-string/jumbo v18, "false"

    goto :goto_32a

    :cond_367
    const-string/jumbo v18, "false"

    goto :goto_33d

    :cond_36b
    invoke-interface {v7, v15}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1dc

    :cond_370
    if-nez v10, :cond_37f

    iget-object v0, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_37f
    iget-object v0, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v18

    if-eqz v18, :cond_399

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto/16 :goto_23b

    :cond_399
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_3a0} :catch_22d

    goto/16 :goto_23b

    :catch_3a2
    move-exception v4

    const-string/jumbo v18, "EnterpriseIdentity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Exception while provisioning token. Exception:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_240

    :cond_3c1
    const/16 v18, 0x0

    return v18
.end method

.method private bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 16

    const/4 v12, 0x0

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;-><init>(I)V

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_30

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: The EnterpriseIdService is already bound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    return-object v6

    :cond_30
    :try_start_30
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".genericssoconnection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_71

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    sget-object v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v7
    :try_end_74
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_74} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_74} :catch_d5

    :try_start_74
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: Binding to the service..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, v5, v0, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_bd

    move-result v6

    if-eqz v6, :cond_cb

    :try_start_8b
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x4e20

    invoke-virtual {v6, v10, v11, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_ac

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_ac

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: CoutnDownLatch return false"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_ac} :catch_b2
    .catchall {:try_start_8b .. :try_end_ac} :catchall_bd

    :cond_ac
    :goto_ac
    :try_start_ac
    monitor-exit v7

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_ac .. :try_end_b0} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_d5

    move-result-object v6

    return-object v6

    :catch_b2
    move-exception v3

    :try_start_b3
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: InterruptedException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_bd

    goto :goto_ac

    :catchall_bd
    move-exception v6

    :try_start_be
    monitor-exit v7

    throw v6
    :try_end_c0
    .catch Ljava/lang/NullPointerException; {:try_start_be .. :try_end_c0} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c0} :catch_d5

    :catch_c0
    move-exception v4

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: NullPointerException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ca
    return-object v12

    :cond_cb
    :try_start_cb
    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v8, "In bindToEnterpriseIdAuthenticator: Fail to bind to sso service"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_bd

    goto :goto_ac

    :catch_d5
    move-exception v2

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In bindToEnterpriseIdAuthenticator: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ca
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-object v0
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 25

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20

    :cond_10
    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_1d

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: Key alias or token to encrypt is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/16 v19, 0x0

    return-object v19

    :cond_20
    const/16 v19, 0x0

    :try_start_22
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    move-object/from16 v0, v19

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move/from16 v19, v0

    if-nez v19, :cond_4a

    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_47

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/16 v19, 0x0

    return-object v19

    :cond_4a
    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_73

    const-string/jumbo v19, "EnterpriseIdentity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: Provider is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    if-eqz v3, :cond_ef

    array-length v0, v4

    move/from16 v19, v0

    add-int/lit8 v17, v19, -0x10

    sget-object v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v19, Ljavax/crypto/SecretKey;

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v21, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v18

    new-instance v5, Ljava/lang/String;

    const-string/jumbo v19, "UTF_8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_cc

    const-string/jumbo v19, "EnterpriseIdentity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: Decrypted output is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_ee

    const-string/jumbo v19, "EnterpriseIdentity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "In decrypt: the length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    return-object v18

    :cond_ef
    sget-boolean v19, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v19, :cond_fc

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: cipher is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_fc} :catch_199
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_fc} :catch_189
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_fc} :catch_179
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_fc} :catch_168
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_fc} :catch_159
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_fc} :catch_14a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_22 .. :try_end_fc} :catch_13b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_fc} :catch_12c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_fc} :catch_11d
    .catch Ljava/security/GeneralSecurityException; {:try_start_22 .. :try_end_fc} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_fc} :catch_ff

    :cond_fc
    :goto_fc
    const/16 v19, 0x0

    return-object v19

    :catch_ff
    move-exception v7

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: Exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_10e
    move-exception v8

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: GeneralSecurityException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_11d
    move-exception v9

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: InvalidAlgorithmParameterException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_12c
    move-exception v6

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: IOException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_13b
    move-exception v13

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: UnrecoverableKeyException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_14a
    move-exception v14

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: BadPaddingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_159
    move-exception v15

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: IllegalBlockSizeException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_168
    move-exception v16

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In encrypt: NoSuchPaddingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_179
    move-exception v10

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: InvalidKeyException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fc

    :catch_189
    move-exception v11

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: KeyStoreException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fc

    :catch_199
    move-exception v12

    const-string/jumbo v19, "EnterpriseIdentity"

    const-string/jumbo v20, "In decrypt: NoSuchAlgorithmException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fc
.end method

.method private encrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 29

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    sget-boolean v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v23, :cond_13

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: Key alias to encrypt is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v23, 0x0

    return-object v23

    :cond_16
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initKeyStore()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->loadKey(Ljava/lang/String;)V

    sget-object v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    move-object/from16 v0, v23

    instance-of v0, v0, Ljavax/crypto/SecretKey;

    move/from16 v23, v0

    if-nez v23, :cond_36

    sget-boolean v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v23, :cond_33

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/16 v23, 0x0

    return-object v23

    :cond_36
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v23, "AES/CBC/PKCS5Padding"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    sget-boolean v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v23, :cond_7c

    const-string/jumbo v23, "EnterpriseIdentity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "In encrypt: Provider is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    if-eqz v5, :cond_133

    sget-object v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    check-cast v23, Ljavax/crypto/SecretKey;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    new-array v4, v0, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v6, Ljava/lang/String;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v23

    const-string/jumbo v24, "UTF_8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v23, :cond_102

    const-string/jumbo v23, "EnterpriseIdentity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "In encrypt: Encrypted output "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    sget-boolean v23, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v23, :cond_124

    const-string/jumbo v23, "EnterpriseIdentity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "In encrypt: the length = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_124} :catch_1d4
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_124} :catch_1c4
    .catch Ljava/security/NoSuchProviderException; {:try_start_16 .. :try_end_124} :catch_1b4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_124} :catch_1a5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_124} :catch_194
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_124} :catch_183
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_124} :catch_172
    .catch Ljava/security/ProviderException; {:try_start_16 .. :try_end_124} :catch_163
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_124} :catch_154
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_16 .. :try_end_124} :catch_145
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_124} :catch_136
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_124} :catch_125

    :cond_124
    return-object v6

    :catch_125
    move-exception v8

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: Exception"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_133
    :goto_133
    const/16 v23, 0x0

    return-object v23

    :catch_136
    move-exception v7

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: IOException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_145
    move-exception v15

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: UnrecoverableKeyException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_154
    move-exception v11

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: KeyStoreException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_163
    move-exception v14

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: ProviderException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_172
    move-exception v16

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: BadPaddingException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_183
    move-exception v17

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: IllegalBlockSizeException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_194
    move-exception v18

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: NoSuchPaddingException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_1a5
    move-exception v12

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: NoSuchAlgorithmException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_133

    :catch_1b4
    move-exception v13

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: NoSuchProviderException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_133

    :catch_1c4
    move-exception v10

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: InvalidKeyException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_133

    :catch_1d4
    move-exception v9

    const-string/jumbo v23, "EnterpriseIdentity"

    const-string/jumbo v24, "In encrypt: InvalidAlgorithmParameterException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_133
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 8

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x4e2

    if-ne v1, v2, :cond_1b

    return-object p1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.sec.MDM_SECURITY"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 12

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    return-object v8

    :cond_a
    :try_start_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_14
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_35

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_35
    if-eqz v5, :cond_47

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_47

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_46} :catch_53
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_46} :catch_48

    return-object v6

    :cond_47
    return-object v8

    :catch_48
    move-exception v1

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In existedNode: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-object v8

    :catch_53
    move-exception v2

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In existedNode: NullPointerException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method

.method static generateRandomBytes(I)[B
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigFilePath(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "authconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V

    :cond_c
    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In getAuthConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    .registers 13

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_29

    const-string/jumbo v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "In getEnterpriseIdAuthenticationConfig: enterpriseId authenticator is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_29
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v3, 0x0

    :goto_33
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_5c

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_47

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_47
    const-string/jumbo v7, "value"

    invoke-direct {p0, v0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_5c
    return-object v6
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 5

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    if-nez v2, :cond_27

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "EnterpriseIdentity"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;-><init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mHandler:Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;

    return-object v2
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 12

    const/4 v9, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_2e

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Keystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is initialized"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_2e} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2e} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2e} :catch_3a
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_2e} :catch_2f

    :cond_2e
    return-object v5

    :catch_2f
    move-exception v4

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-object v9

    :catch_3a
    move-exception v3

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :catch_45
    move-exception v0

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getInstanceOfKeyStore: IOException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :catch_50
    move-exception v1

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :catch_5b
    move-exception v2

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " initializaiton failed (Android API level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_39

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v7, "KnoxEIDTokenKey"

    invoke-virtual {v3, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d2

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_22

    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    const-string/jumbo v7, "CN=%s, OU=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "KnoxEIDTokenKey"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v8, "KnoxEIDTokenKey"

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v4

    const-string/jumbo v7, "RSA"

    const-string/jumbo v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_a8

    const-string/jumbo v7, "EnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Key entry is generated for token "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    :goto_a8
    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_b5

    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    const-string/jumbo v7, "KnoxEIDTokenKey"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_d0
    .catchall {:try_start_1 .. :try_end_d0} :catchall_e0

    monitor-exit p0

    return-object v7

    :cond_d2
    :try_start_d2
    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_a8

    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v8, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_e0

    goto :goto_a8

    :catchall_e0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v12, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_6
    sget-boolean v7, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v7, :cond_24

    const-string/jumbo v7, "EnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "In getPackageCertForPkgname: User id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    const/16 v7, 0x40

    invoke-virtual {v1, p2, v7, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_3f

    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_3b} :catch_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_54
    .catchall {:try_start_6 .. :try_end_3b} :catchall_70

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v12

    :cond_3f
    :try_start_3f
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    array-length v10, v6

    :goto_43
    if-ge v7, v10, :cond_4d

    aget-object v5, v6, v7

    if-eqz v5, :cond_51

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_4c} :catch_62
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_54
    .catchall {:try_start_3f .. :try_end_4c} :catchall_70

    move-result-object v3

    :cond_4d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_50
    return-object v3

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :catch_54
    move-exception v0

    :try_start_55
    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: Exception"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_70

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catch_62
    move-exception v2

    :try_start_63
    const-string/jumbo v7, "EnterpriseIdentity"

    const-string/jumbo v10, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v7, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_70

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_70
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v1

    return-object v1
.end method

.method private getSdpManagerService()Lcom/android/server/SdpManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    return-object v0
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_8d

    monitor-exit v6

    return-object v5

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/data/system/KnoxEID_SCKF"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_65

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_33

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_44

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_55

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->writeKeyData(Ljava/io/File;[B)V

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_65

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_72

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    invoke-static {v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->readKeyData(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v5, :cond_89

    const-string/jumbo v5, "EnterpriseIdentity"

    const-string/jumbo v7, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    :try_end_8b
    .catchall {:try_start_b .. :try_end_8b} :catchall_8d

    monitor-exit v6

    return-object v5

    :catchall_8d
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getUserId()I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_31

    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v1
.end method

.method private initAuthenticationConfigDoc(I)V
    .registers 16

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8f

    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_90

    :cond_2a
    const-string/jumbo v10, "EnterpriseIdentity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "In initAuthenticationConfigDoc: authconfig.xml doesn\'t exist for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", an empty config file is created"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string/jumbo v10, "configuration"

    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v10, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    :goto_68
    sget-boolean v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v10, :cond_8a

    const-string/jumbo v10, "EnterpriseIdentity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is loaded with auth details for userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_8a} :catch_ed
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_8a} :catch_d2
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_8a} :catch_b7
    .catchall {:try_start_d .. :try_end_8a} :catchall_108

    :cond_8a
    if-eqz v8, :cond_8f

    :try_start_8c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_ac

    :cond_8f
    :goto_8f
    return-void

    :cond_90
    :try_start_90
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_95} :catch_ed
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_90 .. :try_end_95} :catch_d2
    .catch Lorg/xml/sax/SAXException; {:try_start_90 .. :try_end_95} :catch_b7
    .catchall {:try_start_90 .. :try_end_95} :catchall_108

    :try_start_95
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v10, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    invoke-direct {v11, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_aa} :catch_11d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_95 .. :try_end_aa} :catch_120
    .catch Lorg/xml/sax/SAXException; {:try_start_95 .. :try_end_aa} :catch_123
    .catchall {:try_start_95 .. :try_end_aa} :catchall_11a

    move-object v8, v9

    goto :goto_68

    :catch_ac
    move-exception v3

    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_b7
    move-exception v5

    :goto_b8
    :try_start_b8
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: SAXException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_108

    if-eqz v8, :cond_8f

    :try_start_c3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_8f

    :catch_c7
    move-exception v3

    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_d2
    move-exception v4

    :goto_d3
    :try_start_d3
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: ParserConfigurationException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_108

    if-eqz v8, :cond_8f

    :try_start_de
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_8f

    :catch_e2
    move-exception v3

    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_ed
    move-exception v3

    :goto_ee
    :try_start_ee
    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_108

    if-eqz v8, :cond_8f

    :try_start_f9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_8f

    :catch_fd
    move-exception v3

    const-string/jumbo v10, "EnterpriseIdentity"

    const-string/jumbo v11, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catchall_108
    move-exception v10

    :goto_109
    if-eqz v8, :cond_10e

    :try_start_10b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10f

    :cond_10e
    :goto_10e
    throw v10

    :catch_10f
    move-exception v3

    const-string/jumbo v11, "EnterpriseIdentity"

    const-string/jumbo v12, "In initAuthenticationConfigDoc: IOException"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10e

    :catchall_11a
    move-exception v10

    move-object v8, v9

    goto :goto_109

    :catch_11d
    move-exception v3

    move-object v8, v9

    goto :goto_ee

    :catch_120
    move-exception v4

    move-object v8, v9

    goto :goto_d3

    :catch_123
    move-exception v5

    move-object v8, v9

    goto :goto_b8
.end method

.method private initKeyStore()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_d

    const-string/jumbo v0, "AndroidKeyStore"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    :cond_d
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "EnterpriseIdentity"

    const-string/jumbo v1, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In initKeyStore: Keystore Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z
    .registers 8

    const-string/jumbo v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :cond_1a
    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v4, "In isAuthenticatorApplicationInstalled: Authenticator is not installed"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAuthenticationEnforced(I)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "network_auth_force_state"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_34

    const/4 v0, 0x1

    :goto_16
    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In isNetworkAuthenticationEnforced: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private loadKey(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_2e

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    :cond_2e
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_40

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void

    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_7f

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_7f

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "EnterpriseIdentity"

    const-string/jumbo v5, "In readKeyData: Reading key data from a file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_12
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v0, v4, [B

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2c

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_27

    goto :goto_1b

    :catchall_27
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_27

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method private removeAll(Lorg/w3c/dom/Node;)V
    .registers 6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_27

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .registers 18

    const/4 v8, 0x0

    sget-object v13, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mCacheLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_14} :catch_6a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_14} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_14} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_14} :catch_49
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_3b
    .catchall {:try_start_4 .. :try_end_14} :catchall_46

    const/4 v7, 0x0

    if-nez p1, :cond_33

    :try_start_17
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    :goto_1c
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v10, v7, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In saveConfigToFile: config file is saved successfully"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_17 .. :try_end_30} :catch_78
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_30} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_30} :catch_7e
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_30} :catch_81
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_30} :catch_84
    .catchall {:try_start_17 .. :try_end_30} :catchall_75

    move-object v8, v9

    :goto_31
    monitor-exit v13

    return-void

    :cond_33
    :try_start_33
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_33 .. :try_end_3a} :catch_78
    .catch Ljavax/xml/transform/TransformerException; {:try_start_33 .. :try_end_3a} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3a} :catch_7e
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_3a} :catch_81
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_84
    .catchall {:try_start_33 .. :try_end_3a} :catchall_75

    goto :goto_1c

    :catch_3b
    move-exception v2

    :goto_3c
    :try_start_3c
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: IOException"

    invoke-static {v12, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_31

    :catchall_46
    move-exception v12

    :goto_47
    monitor-exit v13

    throw v12

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v12, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :catch_54
    move-exception v1

    :goto_55
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v12, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :catch_5f
    move-exception v5

    :goto_60
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v12, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :catch_6a
    move-exception v4

    :goto_6b
    const-string/jumbo v12, "EnterpriseIdentity"

    const-string/jumbo v14, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v12, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_4a .. :try_end_74} :catchall_46

    goto :goto_31

    :catchall_75
    move-exception v12

    move-object v8, v9

    goto :goto_47

    :catch_78
    move-exception v4

    move-object v8, v9

    goto :goto_6b

    :catch_7b
    move-exception v5

    move-object v8, v9

    goto :goto_60

    :catch_7e
    move-exception v1

    move-object v8, v9

    goto :goto_55

    :catch_81
    move-exception v3

    move-object v8, v9

    goto :goto_4a

    :catch_84
    move-exception v2

    move-object v8, v9

    goto :goto_3c
.end method

.method private setNetworkAuthenticationEnforced(ZI)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "network_auth_force_state"

    if-eqz p1, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v3, v4, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_17
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private tokenMigration([BI)J
    .registers 19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v7, :cond_12

    if-nez v9, :cond_1f

    :cond_12
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed due to invalid parameter"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v10

    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v14

    if-nez v14, :cond_37

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed due to no legacy token found"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_37
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/SdpManagerService;->getResetTokenViaTrusted(I)[B

    move-result-object v6

    if-nez v6, :cond_49

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed in legacy token derivation"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_49
    const/4 v14, 0x2

    move/from16 v0, p2

    invoke-virtual {v9, v6, v0, v14}, Lcom/android/server/SdpManagerService;->getLegacyMasterKey([BII)[B

    move-result-object v3

    if-nez v3, :cond_5c

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed in legacy key derivation"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v10

    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_79

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed to add escrow token"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_79
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/SdpManagerService;->removeLegacyToken(I)Z

    move-result v14

    if-nez v14, :cond_8a

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed to remove legacy token"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :try_start_8a
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v7, v0, v10, v11, v1}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v14

    if-eqz v14, :cond_a6

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v9, v14, v3, v0}, Lcom/android/server/SdpManagerService;->generationalShift([B[BI)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_af

    :cond_a6
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In tokenMigration: Failed in sdp generational shift"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b2} :catch_b4

    goto/16 :goto_1b

    :catch_b4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCache(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 5

    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "EnterpriseIdentity"

    const-string/jumbo v1, "In updateCache: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .registers 7

    invoke-static {p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    sget-object v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In updateCacheAndFile: updated authentication config doc is updated in authenticationConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In updateCacheAndFile: updated authentication config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In writeKeyData: Writing key data to a file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_12
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public checkADCExist(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 19

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v8

    if-nez v8, :cond_26

    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In getAuthenticationConfig: cannot get configDoc for userID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :cond_26
    :try_start_26
    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-static {v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_37

    const/4 v5, 0x0

    :cond_37
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v10, v0

    const-string/jumbo v14, "servicepackagesignature"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_100

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: AUTHENTICATOR_PACKAGE_SIGNATURE = null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_54
    const-string/jumbo v14, "enforceRemoteAuthAlways"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_109

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. ENFORCE_REMOTE_AUTH_ALWAYS=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_6d
    const-string/jumbo v14, "forceEnterpriseIDLock"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_119

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. FORCE_ENTERPRISE_IDENTITY_LOCK=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_86
    const-string/jumbo v14, "hideEnterpriseIDLock"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_129

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. HIDE_ENTERPRISE_ID_LOCK=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_9f
    const-string/jumbo v14, "isConfiguredByMDM"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_139

    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Error to look up. isConfiguredByMDM=null in XML"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_b8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v7

    new-instance v1, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_c1} :catch_149

    :try_start_c1
    const-string/jumbo v14, "EnterpriseIdentity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "In getAuthenticationConfig: RemoteAuthAlways: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "forceEnterpriseID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "hideEnterpriseID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "Authenticator: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v12}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setConfiguredByMDM(Z)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ff} :catch_156

    return-object v1

    :cond_100
    :try_start_100
    const-string/jumbo v14, "servicepackagesignature"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_54

    :cond_109
    const-string/jumbo v14, "enforceRemoteAuthAlways"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_6d

    :cond_119
    const-string/jumbo v14, "forceEnterpriseIDLock"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_86

    :cond_129
    const-string/jumbo v14, "hideEnterpriseIDLock"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_9f

    :cond_139
    const-string/jumbo v14, "isConfiguredByMDM"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_146} :catch_149

    move-result v12

    goto/16 :goto_b8

    :catch_149
    move-exception v9

    move-object v1, v11

    :goto_14b
    const-string/jumbo v14, "EnterpriseIdentity"

    const-string/jumbo v15, "In getAuthenticationConfig: Exception"

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x0

    return-object v14

    :catch_156
    move-exception v9

    goto :goto_14b
.end method

.method public getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(I)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v1

    return-object v1
.end method

.method public getEnterpriseIdAuthenticator(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v1
.end method

.method public isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x4e2

    if-eq v1, v2, :cond_21

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    if-nez p1, :cond_32

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_30

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In isNetworkAuthenticationEnforced: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, 0x0

    return v1

    :cond_32
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v1

    return v1
.end method

.method public onAdminRemoved(I)V
    .registers 11

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_1e

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In OnAdminRemoved: uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_40

    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In OnAdminRemoved: userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_53

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Need to be system process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_53
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-ne p1, v0, :cond_ce

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In OnAdminRemoved: Correct admin = all config is removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    if-eqz v6, :cond_a1

    iget-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_a1
    sget-object v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    if-nez v5, :cond_ce

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_ce

    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v6, :cond_ce

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "In onAdminRemoved : file is not removed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    return-void
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 16

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    if-nez p2, :cond_38

    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In performUserAuthentication: Performing user authentication is failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_38
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v12, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: Authenticator signature is not matched"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    new-instance v11, Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-direct {v11}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    const/16 v2, -0xd

    invoke-virtual {v11, v1, v2}, Lcom/samsung/android/knox/sso/common/TokenInfo;->setResponseBundle(Ljava/lang/String;I)V

    return-object v11

    :cond_6e
    sget-boolean v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v1, :cond_7b

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: calling _setAuthenticationConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    invoke-direct {p0, v12, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    invoke-direct {p0, v12, v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    const/4 v11, 0x0

    if-nez v6, :cond_a0

    const-string/jumbo v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In performUserAuthentication: The authenticator is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a0
    :try_start_a0
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->isConfiguredByMDM()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    :cond_ad
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-interface {v6, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_c0} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c0} :catch_c2

    move-result-object v11

    :goto_c1
    return-object v11

    :catch_c2
    move-exception v8

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: Exception"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1

    :catch_cd
    move-exception v7

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In performUserAuthentication: RemoteException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1
.end method

.method public provisionResetPasswordToken(I)Z
    .registers 16

    const-wide/16 v12, 0x0

    const/16 v10, 0x20

    const-wide/16 v6, 0x0

    new-array v0, v10, [B

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string/jumbo v8, "password_token_handle"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    const-string/jumbo v8, "EnterpriseIdentity"

    const-string/jumbo v9, "In provisionResetPasswordToken: EID_PASSWORD_TOKEN_HANDLE = null in XML"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v0

    const-string/jumbo v8, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v8

    if-eqz v8, :cond_68

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/SdpManagerService;->hasLegacyToken(I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->tokenMigration([BI)J

    move-result-wide v6

    :goto_52
    const-string/jumbo v8, "password_token_handle"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    :cond_5f
    :goto_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    cmp-long v8, v6, v12

    if-eqz v8, :cond_b0

    const/4 v8, 0x1

    :goto_67
    return v8

    :cond_68
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v6

    goto :goto_52

    :cond_6f
    const-string/jumbo v8, "password_token_handle"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v8

    if-nez v8, :cond_5f

    invoke-static {v10}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->generateRandomBytes(I)[B

    move-result-object v0

    const-string/jumbo v8, "password_token"

    const-string/jumbo v9, "password_token_key"

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v8, v6, v12

    if-eqz v8, :cond_9c

    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    :cond_9c
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v6

    const-string/jumbo v8, "password_token_handle"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    goto :goto_5f

    :cond_b0
    const/4 v8, 0x0

    goto :goto_67
.end method

.method public resetPasswordByToken(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x4e2

    if-eq v1, v3, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Process should have KnoxCore uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const-wide/16 v4, 0x0

    const/16 v1, 0x20

    new-array v6, v1, [B

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthConfigForUserId(I)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v1, "password_token_handle"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In resetPasswordByToken: EID_PASSWORD_TOKEN_HANDLE = null in XML.Need to provision token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_43
    const-string/jumbo v1, "password_token_handle"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "password_token"

    invoke-interface {v8, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string/jumbo v1, "EnterpriseIdentity"

    const-string/jumbo v2, "In resetPasswordByToken: EID_PASSWORD_TOKEN = null in XML."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_65
    const-string/jumbo v1, "password_token_key"

    const-string/jumbo v3, "password_token"

    invoke-interface {v8, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->decrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_76

    return v10

    :cond_76
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z

    move-result v1

    return v1
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 12

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    :goto_13
    if-nez v6, :cond_22

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "Enterprise Identity not supported on device level "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x2

    return v6

    :cond_20
    move v6, v7

    goto :goto_13

    :cond_22
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4d

    const-string/jumbo v6, "is_from_knox_core"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_66

    const/4 v4, 0x1

    :goto_33
    const-string/jumbo v6, "EnterpriseIdentity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In setAuthenticationConfig: skipInstalledStatusCheck"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-nez v4, :cond_86

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5e

    const-string/jumbo v0, "com.sec.android.service.singlesignon"

    :cond_5e
    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isAuthenticatorApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_68

    const/4 v6, -0x4

    return v6

    :cond_66
    const/4 v4, 0x0

    goto :goto_33

    :cond_68
    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_86

    if-eqz v3, :cond_86

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_86

    const-string/jumbo v6, "EnterpriseIdentity"

    const-string/jumbo v7, "Enterprise Identity requested signature is different from IdP signature"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0xd

    return v6

    :cond_86
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v6

    return v6
.end method

.method public setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_15

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Process should have system uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .registers 9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_16

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_38

    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setUpdatedAuthenticationConfig : UserID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :try_start_38
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(I)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V

    :cond_42
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->_setAuthenticationConfig(ILcom/samsung/android/knox/container/AuthenticationConfig;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_45} :catch_47

    const/4 v2, 0x1

    return v2

    :catch_47
    move-exception v0

    const-string/jumbo v2, "EnterpriseIdentity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In setUpdatedAuthenticationConfig : exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x4e2

    if-eq v3, v5, :cond_22

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    if-nez p1, :cond_32

    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v2, :cond_31

    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In validateUserAuthentication: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :cond_32
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_58

    const-string/jumbo v3, "EnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateUserAuthentication: contextInfo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    :cond_64
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In validateUserAuthentication: Usernames or password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6e
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_81

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput v7, v6, Landroid/os/Message;->arg1:I

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 15

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x4e2

    if-eq v3, v5, :cond_22

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Process should have system uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    const/4 v8, 0x0

    if-nez p1, :cond_33

    sget-boolean v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->DEBUG:Z

    if-eqz v3, :cond_32

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: cxtInfo is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-object v2

    :cond_33
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_3f
    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: Usernames or password is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_49
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_64

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/container/AuthenticationConfig;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;Landroid/os/Bundle;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;)V

    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v6

    if-nez v6, :cond_7b

    const-string/jumbo v3, "EnterpriseIdentity"

    const-string/jumbo v5, "In verifyUserAuthentication: The authenticator value is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7b
    :try_start_7b
    invoke-interface {v6, v0}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v8

    if-eqz v8, :cond_91

    invoke-virtual {v8}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    sget-object v2, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_91

    const/4 v2, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setNetworkAuthenticationEnforced(ZI)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_91} :catch_92

    :cond_91
    :goto_91
    return-object v8

    :catch_92
    move-exception v7

    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In performExchangeAuthentication: RemoteException"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91
.end method
