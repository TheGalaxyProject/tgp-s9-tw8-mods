.class Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;
.super Ljava/lang/Object;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iput-object p2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v0, :sswitch_data_ce

    :cond_9
    :goto_9
    :sswitch_9
    return-void

    :sswitch_a
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    goto :goto_9

    :sswitch_27
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_9

    :cond_43
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_61

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-set0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-wrap0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    return-void

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    :cond_7d
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->-get0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    :cond_a8
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3$1;->this$1:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    goto/16 :goto_9

    :sswitch_data_ce
    .sparse-switch
        0xb -> :sswitch_9
        0xc -> :sswitch_9
        0xd -> :sswitch_27
        0x186a0 -> :sswitch_a
    .end sparse-switch
.end method
