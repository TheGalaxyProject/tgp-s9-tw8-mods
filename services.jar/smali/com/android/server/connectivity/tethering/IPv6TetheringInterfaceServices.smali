.class public Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;
.super Ljava/lang/Object;
.source "IPv6TetheringInterfaceServices.java"


# static fields
.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHwAddr:[B

.field private final mIfName:Ljava/lang/String;

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/net/IpPrefix;

    const-string/jumbo v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    return-void
.end method

.method private configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    if-nez v5, :cond_14

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_b
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :try_start_2e
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_35} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_1e

    :catch_36
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to remove local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_1e

    :cond_5c
    if-eqz p2, :cond_bc

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_bc

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_77
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :try_start_8b
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_92
    .catch Landroid/os/ServiceSpecificException; {:try_start_8b .. :try_end_92} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_92} :catch_93

    goto :goto_7b

    :catch_93
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_bc
    :try_start_bc
    invoke-interface {v5}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_bf
    .catch Landroid/os/ServiceSpecificException; {:try_start_bc .. :try_end_bf} :catch_c0
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_bf} :catch_c0

    :cond_bf
    :goto_bf
    return-void

    :catch_c0
    move-exception v4

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "Failed to update local DNS caching server"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_bf

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    goto :goto_bf
.end method

.method private configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v5

    :try_start_a
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6, v5}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_28

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "Failed to remove %d IPv6 routes from local table."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_68

    :cond_28
    :goto_28
    if-eqz p2, :cond_67

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_67

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_43
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_56

    :cond_51
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_67

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v4

    :try_start_60
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_67} :catch_83

    :cond_67
    :goto_67
    return-void

    :catch_68
    move-exception v1

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_28

    :catch_83
    move-exception v2

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add IPv6 routes to local table Illeagally: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_67

    :catch_9e
    move-exception v1

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_67
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getRandomNonZeroByte()B

    move-result v3

    aput-byte v3, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_10
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    new-instance v3, Landroid/net/RouteInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v2
.end method

.method private static getRandomNonZeroByte()B
    .registers 2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-byte v0, v1

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-static {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    if-eqz p1, :cond_25

    iget-object v1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    :goto_11
    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    if-eqz p1, :cond_1a

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    :cond_1a
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    :cond_22
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void

    :cond_25
    move-object v1, v2

    goto :goto_11
.end method


# virtual methods
.method public start()Z
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_9} :catch_19

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "Failed to find NetworkInterface"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    return v5

    :catch_19
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error looking up NetworkInterfaces: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    return v5

    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B
    :try_end_3f
    .catch Ljava/net/SocketException; {:try_start_37 .. :try_end_3f} :catch_5c

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    invoke-direct {v2, v3, v1, v4}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Ljava/lang/String;I[B)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    return v5

    :catch_5c
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find hardware address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    return v5

    :cond_7a
    const/4 v2, 0x1

    return v2
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    :cond_13
    return-void
.end method

.method public updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v5, :cond_5

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-void

    :cond_e
    const/4 v3, 0x0

    if-eqz p1, :cond_5c

    new-instance v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v3}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2a

    new-instance v4, Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_5c
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
