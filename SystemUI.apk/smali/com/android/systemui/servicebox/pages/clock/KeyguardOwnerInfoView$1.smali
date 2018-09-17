.class Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;
.super Landroid/os/Handler;
.source "KeyguardOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    goto :goto_5

    nop

    :pswitch_data_e
    .packed-switch 0x12ce
        :pswitch_6
    .end packed-switch
.end method
