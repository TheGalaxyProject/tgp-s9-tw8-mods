.class public Lcom/sec/ims/presence/DeviceTuple;
.super Ljava/lang/Object;
.source "DeviceTuple.java"


# instance fields
.field public mDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDeviceCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceId:Ljava/lang/String;

.field public mNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p3, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/sec/ims/presence/DeviceTuple;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/sec/ims/presence/DeviceTuple;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/presence/DeviceTuple;

    iget-object v1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_2a

    return v3

    :cond_1f
    iget-object v1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    :cond_2a
    iget-object v1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-nez v1, :cond_33

    iget-object v1, v0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-eqz v1, :cond_3e

    return v3

    :cond_33
    iget-object v1, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    iget-object v2, v0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v3

    :cond_3e
    return v4
.end method

.method public hashCode()I
    .registers 6

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-nez v2, :cond_2f

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    if-nez v2, :cond_36

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    if-nez v2, :cond_3d

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    if-nez v2, :cond_44

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    if-nez v4, :cond_4b

    :goto_2c
    add-int v1, v2, v3

    return v1

    :cond_2f
    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_36
    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_3d
    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_44
    iget-object v2, p0, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_4b
    iget-object v3, p0, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2c
.end method
