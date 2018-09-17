.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;
.super Landroid/os/Handler;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1a
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mInternalHandler. Activity is null or finishing."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    :goto_33
    return-void

    :pswitch_34
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->doAutoRippleAnim(I)V

    goto :goto_33

    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x29a

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->doAutoRippleAnim(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/FixSizeLottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->playItemCheckingAnim()V

    goto :goto_33

    :pswitch_73
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->playItemCheckingAnim()V

    goto :goto_33

    :pswitch_7d
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$1;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-wrap0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V

    goto :goto_33

    nop

    :pswitch_data_84
    .packed-switch 0x1389
        :pswitch_34
        :pswitch_73
        :pswitch_7d
        :pswitch_3e
    .end packed-switch
.end method
