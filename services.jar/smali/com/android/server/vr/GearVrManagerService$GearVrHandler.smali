.class final Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v2}, Lcom/android/server/vr/GearVrManagerService;->-wrap32(Lcom/android/server/vr/GearVrManagerService;I)V

    goto :goto_5

    :pswitch_e
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    const/4 v0, 0x1

    :goto_14
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-wrap31(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    goto :goto_5

    :cond_20
    const/4 v0, 0x0

    goto :goto_14

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
