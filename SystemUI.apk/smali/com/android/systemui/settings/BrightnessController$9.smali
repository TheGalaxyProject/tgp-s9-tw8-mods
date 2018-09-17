.class Lcom/android/systemui/settings/BrightnessController$9;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    :try_start_7
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8a

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_2c

    :goto_f
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    return-void

    :pswitch_15
    :try_start_15
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2c

    goto :goto_f

    :catchall_2c
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw v0

    :pswitch_33
    :try_start_33
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_41

    :goto_3d
    invoke-interface {v2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_f

    :cond_41
    move v0, v1

    goto :goto_3d

    :pswitch_43
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_f

    :pswitch_4f
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_f

    :pswitch_5a
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_64

    :goto_60
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto :goto_f

    :cond_64
    move v0, v1

    goto :goto_60

    :pswitch_66
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateHighBrightnessMode(I)V

    goto :goto_f

    :pswitch_72
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateStrainAlertDialog(I)V

    goto :goto_f

    :pswitch_7e
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$9;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->updateOutdoorMode(I)V
    :try_end_89
    .catchall {:try_start_33 .. :try_end_89} :catchall_2c

    goto :goto_f

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_15
        :pswitch_33
        :pswitch_43
        :pswitch_4f
        :pswitch_5a
        :pswitch_66
        :pswitch_72
        :pswitch_7e
    .end packed-switch
.end method
