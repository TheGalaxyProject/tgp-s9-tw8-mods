.class Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;
.super Ljava/lang/Object;
.source "SecIntervalSeekbarPreference.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6

    const-wide/16 v2, 0x7d0

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get4(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get3(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;->this$0:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->-get3(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d
.end method
