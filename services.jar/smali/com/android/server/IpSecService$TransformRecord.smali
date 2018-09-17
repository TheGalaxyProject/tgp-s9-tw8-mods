.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private mConfig:Landroid/net/IpSecConfig;

.field private mResourceId:I

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;Landroid/net/IpSecConfig;ILandroid/os/IBinder;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p4}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    iput p3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/IpSecConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method protected nullifyRecord()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    return-void
.end method

.method protected releaseResources()V
    .registers 12

    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v9

    const/4 v0, 0x0

    array-length v10, v9

    move v8, v0

    :goto_7
    if-ge v8, v10, :cond_6a

    aget v2, v9, v8

    :try_start_b
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :goto_25
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    :goto_37
    iget-object v5, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v5, v2}, Landroid/net/IpSecConfig;->getSpi(I)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    :goto_40
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_7

    :cond_44
    const-string/jumbo v3, ""

    goto :goto_25

    :cond_48
    const-string/jumbo v4, ""
    :try_end_4b
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_4b} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4b} :catch_4c

    goto :goto_37

    :catch_4c
    move-exception v6

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to delete SA with ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_6a
    return-void

    :catch_6b
    move-exception v7

    goto :goto_40
.end method
