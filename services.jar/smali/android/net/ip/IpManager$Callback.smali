.class public Landroid/net/ip/IpManager$Callback;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .registers 2

    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 2

    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .registers 2

    return-void
.end method

.method public onPostDhcpAction()V
    .registers 1

    return-void
.end method

.method public onPreDhcpAction()V
    .registers 1

    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 2

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 2

    return-void
.end method

.method public onQuit()V
    .registers 1

    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSemLog(I)V
    .registers 2

    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 2

    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 2

    return-void
.end method
