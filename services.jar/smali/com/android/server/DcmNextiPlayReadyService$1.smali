.class Lcom/android/server/DcmNextiPlayReadyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v4}, Lcom/android/server/DcmNextiPlayReadyService;->-get0(Lcom/android/server/DcmNextiPlayReadyService;)Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_46

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    iput v7, v1, Landroid/os/Message;->what:I

    :cond_3c
    :goto_3c
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v4}, Lcom/android/server/DcmNextiPlayReadyService;->-get0(Lcom/android/server/DcmNextiPlayReadyService;)Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_46
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_3c

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_3c

    :cond_5d
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    iget-object v4, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_72

    iput v7, v1, Landroid/os/Message;->what:I

    goto :goto_3c

    :cond_72
    iget-object v4, p0, Lcom/android/server/DcmNextiPlayReadyService$1;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_3c

    :cond_7b
    const-string/jumbo v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    return-void
.end method
