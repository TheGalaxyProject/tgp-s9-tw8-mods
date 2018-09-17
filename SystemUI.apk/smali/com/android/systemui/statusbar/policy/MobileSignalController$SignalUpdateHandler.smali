.class Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap6(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x46
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
