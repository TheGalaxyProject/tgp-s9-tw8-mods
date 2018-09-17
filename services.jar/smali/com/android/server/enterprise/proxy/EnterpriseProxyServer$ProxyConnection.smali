.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

.field private clientConnection:Ljava/net/Socket;

.field private credentials:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private convertStringUrl(Ljava/lang/String;)Ljava/net/URI;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v1, v2

    :goto_7
    return-object v1

    :catch_8
    move-exception v0

    const-string/jumbo v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get3()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-wrap1(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get3()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    return-void
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    if-eqz v3, :cond_26

    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    if-eqz v1, :cond_32

    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_37
    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method private getExternalProxy()Landroid/net/ProxyInfo;
    .registers 3

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get5()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get0(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-set0(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get5()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method private getExternalProxyList(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-nez v4, :cond_9f

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-wrap0(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v4

    if-eqz v4, :cond_5c

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->convertStringUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_5c

    if-eqz v1, :cond_5c

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string/jumbo v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requested url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is on proxy exclusion list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_5c
    return-object v0

    :cond_5d
    const-string/jumbo v4, "EnterpriseProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Retrieved external proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_92
    new-instance v2, Landroid/net/PacProxySelector;

    invoke-direct {v2}, Landroid/net/PacProxySelector;-><init>()V

    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5c

    :cond_9f
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v4}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c
.end method

.method private getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, ""

    if-eqz p1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method private isClientConnectionAlive()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_c
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v3}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2f

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2f
    const/4 v3, 0x0

    return v3

    :cond_31
    const/4 v3, 0x1

    return v3
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v4, 0x0

    return v4

    :cond_6
    if-eqz p2, :cond_12

    const-string/jumbo v4, ","

    const-string/jumbo v5, "|"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_39

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :sswitch_2b
    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :sswitch_32
    const-string/jumbo v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    return v4

    :sswitch_data_42
    .sparse-switch
        0x2a -> :sswitch_32
        0x2e -> :sswitch_2b
    .end sparse-switch
.end method

.method private readProxyCredentialsIfNeeded(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-wrap0(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get0(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService;->retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    :cond_39
    return-void
.end method

.method private saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V
    .registers 5

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_15
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    const-string/jumbo v0, "Connection: close"

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-static {p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v3, -0x1

    if-eq v6, v3, :cond_37

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "connection"

    const-string/jumbo v4, "connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "proxy-connection"

    const-string/jumbo v4, "proxy-connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_36
    return v1

    :cond_37
    return v2
.end method

.method private skipToRequestBody(Ljava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private startCredentialsDialog(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.mdm"

    const-string/jumbo v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get1(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    const/16 v24, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    if-eqz v3, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->isClientConnectionAlive()Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->authState:Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-virtual {v3}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v24

    :goto_17
    const-string/jumbo v3, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    return-void

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v24

    goto :goto_17

    :cond_3b
    const/4 v3, 0x0

    aget-object v6, v26, v3

    const/4 v3, 0x1

    aget-object v28, v26, v3

    const/4 v3, 0x2

    aget-object v8, v26, v3

    const/4 v7, 0x0

    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    const-string/jumbo v3, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    aget-object v13, v14, v3

    array-length v3, v14

    const/4 v4, 0x2

    if-ge v3, v4, :cond_17a

    const/16 v19, 0x1bb

    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getExternalProxyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v25, v5

    :goto_91
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_262

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/net/Proxy;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9d} :catch_21a

    :try_start_9d
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c8

    const-string/jumbo v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Sending traffic to proxy "

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v15

    check-cast v15, Ljava/net/InetSocketAddress;

    new-instance v5, Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v5, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_dc} :catch_259
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_dc} :catch_21a

    :try_start_dc
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->getProxyString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v23

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->discoverProxyAuthenticator(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v22

    if-eqz v22, :cond_12d

    invoke-interface/range {v22 .. v22}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v3

    if-eqz v3, :cond_12d

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->readProxyCredentialsIfNeeded(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    if-eqz v3, :cond_1aa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v3, v5, v1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->credentials:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_134} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_134} :catch_21a

    :goto_134
    if-eqz v5, :cond_247

    :goto_136
    :try_start_136
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15f

    new-instance v5, Ljava/net/Socket;

    move/from16 v0, v19

    invoke-direct {v5, v13, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string/jumbo v4, "HTTP/1.1 200 OK\n"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_15f
    :goto_15f
    if-eqz v5, :cond_172

    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    const/4 v9, 0x0

    :cond_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-static {v3, v5, v9}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_172} :catch_21a

    :cond_172
    :goto_172
    :try_start_172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_179} :catch_256

    :goto_179
    return-void

    :cond_17a
    const/4 v3, 0x1

    :try_start_17b
    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_180
    .catch Ljava/lang/NumberFormatException; {:try_start_17b .. :try_end_180} :catch_183
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_180} :catch_21a

    move-result v19

    goto/16 :goto_60

    :catch_183
    move-exception v18

    :try_start_184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18b} :catch_21a

    return-void

    :cond_18c
    :try_start_18c
    new-instance v27, Ljava/net/URI;

    invoke-direct/range {v27 .. v28}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_191
    .catch Ljava/net/URISyntaxException; {:try_start_18c .. :try_end_191} :catch_1a1
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_191} :catch_21a

    :try_start_191
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getPort()I
    :try_end_198
    .catch Ljava/net/URISyntaxException; {:try_start_191 .. :try_end_198} :catch_25d
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_198} :catch_21a

    move-result v19

    if-gez v19, :cond_19d

    const/16 v19, 0x50

    :cond_19d
    move-object/from16 v7, v27

    goto/16 :goto_81

    :catch_1a1
    move-exception v12

    :goto_1a2
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a9} :catch_21a

    return-void

    :cond_1aa
    :try_start_1aa
    new-instance v3, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;-><init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->saveAuthCache(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->startCredentialsDialog(Ljava/lang/String;)V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1c7} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c7} :catch_21a

    return-void

    :cond_1c8
    :try_start_1c8
    const-string/jumbo v3, "EnterpriseProxyServer"

    const-string/jumbo v4, "Direct proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/net/Socket;

    move/from16 v0, v19

    invoke-direct {v5, v13, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1d8} :catch_259
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d8} :catch_21a

    :try_start_1d8
    const-string/jumbo v3, "CONNECT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->skipToRequestBody(Ljava/net/Socket;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    const-string/jumbo v4, "HTTP/1.1 200 OK\n"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_1f4
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1f4} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1f4} :catch_21a

    goto/16 :goto_134

    :catch_1f6
    move-exception v16

    :goto_1f7
    :try_start_1f7
    const-string/jumbo v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unable to connect to proxy "

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_218} :catch_21a

    goto/16 :goto_134

    :catch_21a
    move-exception v11

    const-string/jumbo v3, "EnterpriseProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Problem Proxying "

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_172

    :cond_23c
    :try_start_23c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_245} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_245} :catch_21a

    goto/16 :goto_134

    :cond_247
    move-object/from16 v25, v5

    goto/16 :goto_91

    :cond_24b
    :try_start_24b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->clientConnection:Ljava/net/Socket;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_254} :catch_21a

    goto/16 :goto_15f

    :catch_256
    move-exception v16

    goto/16 :goto_179

    :catch_259
    move-exception v16

    move-object/from16 v5, v25

    goto :goto_1f7

    :catch_25d
    move-exception v12

    move-object/from16 v7, v27

    goto/16 :goto_1a2

    :cond_262
    move-object/from16 v5, v25

    goto/16 :goto_136
.end method
