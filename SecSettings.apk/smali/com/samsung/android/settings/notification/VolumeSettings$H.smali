.class final Lcom/samsung/android/settings/notification/VolumeSettings$H;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings$H;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_e

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap4(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    goto :goto_e

    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap7(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    goto :goto_e

    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap6(Lcom/samsung/android/settings/notification/VolumeSettings;I)V

    goto :goto_e

    :pswitch_2d
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap5(Lcom/samsung/android/settings/notification/VolumeSettings;I)V

    goto :goto_e

    :pswitch_35
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap8(Lcom/samsung/android/settings/notification/VolumeSettings;I)V

    goto :goto_e

    :pswitch_3d
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$H;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap3(Lcom/samsung/android/settings/notification/VolumeSettings;I)V

    goto :goto_e

    nop

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_f
        :pswitch_19
        :pswitch_1f
        :pswitch_2d
        :pswitch_35
        :pswitch_25
        :pswitch_3d
    .end packed-switch
.end method
