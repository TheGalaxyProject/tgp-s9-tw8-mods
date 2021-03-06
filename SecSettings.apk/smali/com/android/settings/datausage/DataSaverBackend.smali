.class public Lcom/android/settings/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverBackend$1;,
        Lcom/android/settings/datausage/DataSaverBackend$2;,
        Lcom/android/settings/datausage/DataSaverBackend$Listener;,
        Lcom/android/settings/datausage/DataSaverBackend$PolicySet;
    }
.end annotation


# static fields
.field private static sLoadingDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private handler_loading:Landroid/os/Handler;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidPolicies:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataSaverBackend;)Landroid/net/NetworkPolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get4()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1

    sput-object p0, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataSaverBackend;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->handleUidPoliciesChanged(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_NEVER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_ALWAYS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->RESTRICTION_DURING_ROAMING:I

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->handler_loading:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$2;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private handleUidPoliciesChanged(II)V
    .registers 12

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-nez p2, :cond_2d

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_16
    if-ne v2, v8, :cond_33

    const/4 v4, 0x1

    :goto_19
    if-ne v2, v7, :cond_35

    const/4 v3, 0x1

    :goto_1c
    if-ne p2, v8, :cond_37

    const/4 v1, 0x1

    :goto_1f
    if-ne p2, v7, :cond_39

    const/4 v0, 0x1

    :goto_22
    if-eq v4, v1, :cond_27

    invoke-direct {p0, p1, v1}, Lcom/android/settings/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    :cond_27
    if-eq v3, v0, :cond_2c

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    :cond_2c
    return-void

    :cond_2d
    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_16

    :cond_33
    const/4 v4, 0x0

    goto :goto_19

    :cond_35
    const/4 v3, 0x0

    goto :goto_1c

    :cond_37
    const/4 v1, 0x0

    goto :goto_1f

    :cond_39
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private handleWhitelistChanged(IZ)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private loadBlacklist()V
    .registers 7

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_9
    if-ge v1, v3, :cond_15

    aget v0, v2, v1

    iget-object v4, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method private loadWhitelist()V
    .registers 7

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_9
    if-ge v1, v3, :cond_15

    aget v0, v2, v1

    iget-object v4, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    return-void
.end method

.method public changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v1, v5, [Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    const/16 v6, 0x1001

    invoke-direct {v5, v4, v6}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    aput-object v5, v1, v4

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    invoke-direct {v5, v3, v4}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    aput-object v5, v1, v3

    new-instance v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;

    invoke-direct {v5, v4, v4}, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;-><init>(II)V

    const/4 v6, 0x2

    aput-object v5, v1, v6

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v5

    and-int/lit8 v0, v5, 0x1

    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, p1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v2

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    if-eq v0, v5, :cond_6a

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    if-ne v5, v3, :cond_ae

    :goto_37
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    const-string/jumbo v3, "DataSaverBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bgDataPolicy_cur policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setUidPolicy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->bgDataPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    const/16 v3, 0x1002

    if-eq v2, v3, :cond_ad

    aget-object v3, v1, p3

    iget v3, v3, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    if-eq v2, v3, :cond_ad

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    aget-object v4, v1, p3

    iget v4, v4, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    invoke-virtual {v3, p1, v4}, Landroid/net/ConnectivityManager;->setRoamingReduction(II)V

    const-string/jumbo v3, "DataSaverBackend"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "roamingPolicy_cur policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setRoamingReduction("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, p3

    iget v5, v5, Lcom/android/settings/datausage/DataSaverBackend$PolicySet;->roamingPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    return-void

    :cond_ae
    move v3, v4

    goto :goto_37
.end method

.method public getRoamingReduction(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getRoamingReduction(I)I

    move-result v0

    return v0
.end method

.method public getWhitelistedCount()I
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return v0
.end method

.method public isBlacklisted(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isDataSaverEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public refreshBlacklist()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    return-void
.end method

.method public refreshWhitelist()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    return-void
.end method

.method public remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    :cond_14
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .registers 8

    const/4 v5, 0x1

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const v4, 0x7f120946

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/datausage/DataSaverBackend;->sLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$3;-><init>(Lcom/android/settings/datausage/DataSaverBackend;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .registers 9

    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p3, :cond_1b

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    const/16 v4, 0x18c

    invoke-virtual {v1, v2, v4, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .registers 9

    if-eqz p3, :cond_1c

    const/4 v0, 0x4

    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p3, :cond_1b

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    const/16 v4, 0x18b

    invoke-virtual {v1, v2, v4, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_3
.end method
