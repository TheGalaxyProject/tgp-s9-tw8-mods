.class public Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->DONE:I

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v3, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-nez v2, :cond_7d

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->checkPuk()Z

    move-result v2

    if-eqz v2, :cond_79

    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f121c65

    :goto_1d
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    :goto_22
    if-eqz v0, :cond_57

    if-eqz v1, :cond_d0

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v4}, Lcom/android/settings/UCSCryptKeeperTask;->-get0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v4}, Lcom/android/settings/UCSCryptKeeperTask;->-get0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_78
    return-void

    :cond_79
    const v0, 0x7f121c6c

    goto :goto_1d

    :cond_7d
    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v2, v4, :cond_98

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->checkPin()Z

    move-result v2

    if-eqz v2, :cond_94

    iput v6, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f121c62

    :goto_8e
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_22

    :cond_94
    const v0, 0x7f121c66

    goto :goto_8e

    :cond_98
    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v2, v6, :cond_c9

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->confirmPin()Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f1205ac

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap6(Lcom/android/settings/UCSCryptKeeperTask;)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto/16 :goto_22

    :cond_b6
    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f12104c

    const v1, 0x7f121c65

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_22

    :cond_c9
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto/16 :goto_22

    :cond_d0
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_57
.end method

.method varargs reset([I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    aget v2, p1, v4

    const v3, 0x7f121c68

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :cond_2a
    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4d
    return-void
.end method
