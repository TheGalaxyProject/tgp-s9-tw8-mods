.class final Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AllAroundSensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allaroundsensing/AllAroundSensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4a

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap4(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;Ljava/lang/String;II)V

    goto :goto_5

    :pswitch_14
    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    iget-object v1, v1, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_5

    :catch_1f
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-get0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "AllAroundSensingService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_32
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap1(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    goto :goto_5

    :pswitch_38
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap0(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    goto :goto_5

    :pswitch_3e
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap2(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    goto :goto_5

    :pswitch_44
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService$ScrControlHandler;->this$0:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-static {v1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;->-wrap3(Lcom/samsung/android/allaroundsensing/AllAroundSensingService;)V

    goto :goto_5

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
        :pswitch_3e
        :pswitch_32
        :pswitch_38
        :pswitch_44
    .end packed-switch
.end method
