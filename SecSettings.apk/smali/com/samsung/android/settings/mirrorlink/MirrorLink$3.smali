.class Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLink;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {p2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    invoke-static {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-wrap1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    :cond_16
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLink;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->-set5(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-void
.end method
