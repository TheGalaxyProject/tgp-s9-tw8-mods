.class public Lcom/samsung/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;,
        Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez p1, :cond_12

    sget-object v3, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "The given context is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/etc/support_omc"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v4

    :goto_23
    iput-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    if-nez v3, :cond_3f

    const-string/jumbo v3, "persist.sys.omc_path"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.omcnw_path"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    :cond_3f
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-void

    :cond_47
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;
    .registers 11

    const/4 v5, 0x0

    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo v6, "Settings.IMSSetting"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_22

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Settings.IMSSetting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_22
    const-string/jumbo v6, "Setting"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_36

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No Setting node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_36
    const/4 v0, 0x0

    :goto_37
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_b7

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEnabledRcsFromMps: Found matched node for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "RCS"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_96

    const-string/jumbo v6, "EnableRCS"

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a1

    :cond_8b
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: EnableRCS is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_96
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getEnabledRcsFromMps: No RCS node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6

    :cond_a1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    :goto_b0
    return-object v6

    :cond_b1
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->DISABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    goto :goto_b0

    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_b7
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;
    .registers 2

    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    :cond_b
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtils;->sInstance:Lcom/samsung/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    return-object v0

    :cond_1b
    return-object v4
.end method

.method public static getNWCode()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.csc.omcnw_code"

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->getSalesCodefromProperties()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_a
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: MCCMNC is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_13
    new-instance v3, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isOmcDevice()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo v6, "GeneralInfo"

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_32

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No GenralInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_32
    const-string/jumbo v6, "NetworkInfo"

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_44

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "getNetworkName: No NetworkInfo node"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_44
    const/4 v0, 0x0

    :goto_45
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_88

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "MCCMNC"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNetworkName: Found matched network name by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :cond_88
    return-object v5

    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_45
.end method

.method public static getSalesCodefromProperties()Ljava/lang/String;
    .registers 3

    const-string/jumbo v1, "persist.omc.sales_code"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public static isTmpSimSwap()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->getSalesCodefromProperties()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->getNWCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public isOmcDevice()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    return v0
.end method

.method public isRcsEnabledInCsc()Z
    .registers 10

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_UseMpsForImsSetting"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-virtual {v6}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v3

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: cscRcsEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), useMpsForIms("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), isRcsUiForOpen("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    if-eqz v0, :cond_6e

    if-eqz v1, :cond_6e

    if-eqz v3, :cond_6e

    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/rcs/RcsUtils;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-nez v4, :cond_8f

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not availble(couldn\'t find matched network name)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    :goto_6e
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS availability is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8f
    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6e

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnabledRcsFromMps(Ljava/lang/String;)Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->NO_FEATURE_TAG:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-eq v2, v6, :cond_a7

    invoke-static {}, Lcom/samsung/android/settings/rcs/RcsUtils;->isTmpSimSwap()Z

    move-result v6

    if-eqz v6, :cond_b1

    :cond_a7
    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "isRcsEnabledInCsc: RCS service is not available(couldn\'t find feature tag)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_b1
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;->ENABLED:Lcom/samsung/android/settings/rcs/RcsUtils$RcsMpsStatus;

    if-ne v2, v6, :cond_d7

    const/4 v5, 0x1

    :goto_b6
    sget-object v6, Lcom/samsung/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRcsEnabledInCsc: RCS service is available(found feature tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_d7
    const/4 v5, 0x0

    goto :goto_b6
.end method
