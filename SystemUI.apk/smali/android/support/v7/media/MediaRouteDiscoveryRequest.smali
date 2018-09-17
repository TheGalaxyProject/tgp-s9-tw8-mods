.class public final Landroid/support/v7/media/MediaRouteDiscoveryRequest;
.super Ljava/lang/Object;
.source "MediaRouteDiscoveryRequest.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaRouteSelector;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "selector"

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "activeScan"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private ensureSelector()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v0, :cond_1b

    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_1b
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/os/Bundle;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v2, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v3

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    return v1
.end method

.method public getSelector()Landroid/support/v7/media/MediaRouteSelector;
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    xor-int/2addr v0, v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isActiveScan()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isValid()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DiscoveryRequest{ selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", activeScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
