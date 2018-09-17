.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get4(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get0(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_23

    :cond_13
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get3(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get11(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_23
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-set1(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    :try_start_31
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_a7

    :try_start_37
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get9(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get10(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_ae

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    :cond_5b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_76

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_76

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    :cond_76
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_91
    if-ge v0, v3, :cond_cf

    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    invoke-static {v5, v4}, Lcom/android/server/print/RemotePrintService;->-wrap10(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    :catch_a7
    move-exception v2

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    return-void

    :catch_ae
    move-exception v2

    const-string/jumbo v4, "RemotePrintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error setting client for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    return-void

    :cond_cf
    :goto_cf
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_eb

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_cf

    :cond_eb
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-nez v4, :cond_102

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get6(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_102

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap0(Lcom/android/server/print/RemotePrintService;)V

    :cond_102
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set2(Lcom/android/server/print/RemotePrintService;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    return-void
.end method
