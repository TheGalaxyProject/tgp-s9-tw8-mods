.class Lcom/sec/ims/scab/CABManager$1;
.super Ljava/lang/Object;
.source "CABManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/scab/CABManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/scab/CABManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    invoke-static {p2}, Lcom/sec/ims/scab/ICABService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/scab/ICABService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-set0(Lcom/sec/ims/scab/ICABService;)Lcom/sec/ims/scab/ICABService;

    const-string/jumbo v0, "CABManager"

    const-string/jumbo v1, "Connected to CABService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-get0(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-get0(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onConnected()V

    :cond_21
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-set0(Lcom/sec/ims/scab/ICABService;)Lcom/sec/ims/scab/ICABService;

    const-string/jumbo v0, "CABManager"

    const-string/jumbo v1, "Disconnected to CABService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-get0(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {v0}, Lcom/sec/ims/scab/CABManager;->-get0(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onDisconnected()V

    :cond_1e
    return-void
.end method
