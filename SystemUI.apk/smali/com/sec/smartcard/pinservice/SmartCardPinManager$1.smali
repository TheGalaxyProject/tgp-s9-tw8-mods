.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-static {p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v2

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    const-string/jumbo v1, "SmartCardPinManager"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-nez v1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    const-string/jumbo v1, "SmartCardPinManager"

    const-string/jumbo v2, "calling queue.put"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_1e

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    return-void
.end method
