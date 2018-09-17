.class Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;
.super Ljava/lang/Object;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {p2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    new-instance v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)V

    invoke-static {v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-set0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get4(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    :goto_2d
    return-void

    :cond_2e
    const-string/jumbo v1, "MirrorLinkAppDetail"

    const-string/jumbo v2, "MirrorlinkManager service is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_37} :catch_38

    goto :goto_2d

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get4(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get4(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_2b

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-set2(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-set0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20
.end method
