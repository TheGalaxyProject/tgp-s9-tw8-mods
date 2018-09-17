.class Lcom/android/server/smartclip/SpenGestureManagerService$4;
.super Landroid/os/Handler;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap4(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    goto :goto_8

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    invoke-static {v1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap13(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;)V

    goto :goto_8

    :pswitch_21
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap11(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    goto :goto_8

    nop

    :pswitch_data_28
    .packed-switch 0x3018
        :pswitch_9
        :pswitch_11
        :pswitch_21
    .end packed-switch
.end method
