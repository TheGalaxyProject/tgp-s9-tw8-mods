.class Lcom/android/server/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsStrongAuth;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_5

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v1, v0}, Lcom/android/server/LockSettingsStrongAuth;->-wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    goto :goto_5

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/LockSettingsStrongAuth;->-wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V

    goto :goto_5

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->-wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V

    goto :goto_5

    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->-wrap4(Lcom/android/server/LockSettingsStrongAuth;I)V

    goto :goto_5

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_6
        :pswitch_10
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method
