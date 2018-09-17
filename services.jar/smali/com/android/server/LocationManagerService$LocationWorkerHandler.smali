.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_16

    :goto_12
    invoke-static {v3, v0, v1}, Lcom/android/server/LocationManagerService;->-wrap8(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_7

    :cond_16
    move v1, v2

    goto :goto_12

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Received MSG_NETWORK_LOCATION_TIMER_EXPIERD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get14(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Minor session is operated by timer."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$CiqLocationListener;

    move-result-object v1

    const-string/jumbo v3, "LocationManagerService"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/LocationManagerService;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Minor session is completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, v2}, Lcom/android/server/LocationManagerService;->-set3(Lcom/android/server/LocationManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->sendEmptyCIQDataForNonGPSProvider()V

    goto :goto_7

    :cond_5d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "LC30 already submitted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method
