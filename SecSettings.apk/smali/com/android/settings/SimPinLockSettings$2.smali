.class Lcom/android/settings/SimPinLockSettings$2;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPinLockSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$2;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$2;->this$0:Lcom/android/settings/SimPinLockSettings;

    iget-object v0, v0, Lcom/android/settings/SimPinLockSettings;->mH:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$2;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-static {v0}, Lcom/android/settings/SimPinLockSettings;->-wrap2(Lcom/android/settings/SimPinLockSettings;)V

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
