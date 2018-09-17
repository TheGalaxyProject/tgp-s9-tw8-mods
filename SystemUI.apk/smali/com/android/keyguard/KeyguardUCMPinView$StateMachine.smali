.class Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_NEW_PIN:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field final UNKNOWN:I

.field private mRound:I

.field private mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_NEW_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->DONE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->UNKNOWN:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method private getDetailErrorMessage(I)Ljava/lang/String;
    .registers 8

    const-string/jumbo v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDetailErrorMessage errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    if-nez p1, :cond_2d

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1206c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap2(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_44} :catch_4e

    move-result-object v1

    :cond_45
    :goto_45
    if-nez v1, :cond_4d

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v1

    :cond_4d
    return-object v1

    :catch_4e
    move-exception v0

    const-string/jumbo v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception in getDetailErrorMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method


# virtual methods
.method public getState()I
    .registers 3

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "StateMachine.getState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return v0
.end method

.method public setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .registers 13

    const-string/jumbo v5, "KeyguardUCMPinView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    sparse-switch v5, :sswitch_data_268

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "unknown status nothing to do"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void

    :sswitch_3c
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_3b

    :sswitch_5f
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x20

    if-ne p2, v5, :cond_b3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206e5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9d
    :goto_9d
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_3b

    :cond_b3
    if-nez p2, :cond_9d

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1205f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :sswitch_e7
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_12e

    if-nez p2, :cond_125

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1205f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_125
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :cond_12e
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    if-nez p2, :cond_190

    if-nez p4, :cond_15f

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "failed to get the generatePassword values"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206c0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :cond_15f
    const/4 v1, 0x0

    const-string/jumbo v5, "stringresponse"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "errorresponse"

    const/4 v6, -0x1

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_178

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_185

    :cond_178
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :cond_185
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap8(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V

    goto/16 :goto_3b

    :cond_190
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :sswitch_199
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get3(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v5

    if-eqz v5, :cond_24c

    const/16 v5, 0x21

    if-ne p2, v5, :cond_218

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1df
    :goto_1df
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    :goto_1e2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20f

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_20f

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20f
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b

    :cond_218
    if-nez p2, :cond_1df

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120616

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1df

    :cond_24c
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12073f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "pinExpireMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_1e2

    :sswitch_data_268
    .sparse-switch
        -0x1 -> :sswitch_3c
        0x83 -> :sswitch_e7
        0x84 -> :sswitch_5f
        0x85 -> :sswitch_199
    .end sparse-switch
.end method

.method public verifyPUKandUpdateUI()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v2, "KeyguardUCMPinView"

    const-string/jumbo v3, "StateMachine.verifyPUKandUpdateUI called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/16 v3, 0x85

    if-eq v2, v3, :cond_14

    return-void

    :cond_14
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    packed-switch v2, :pswitch_data_a0

    :goto_19
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v2, v4, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_55

    if-eqz v1, :cond_98

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_55
    :goto_55
    return-void

    :pswitch_56
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap1(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_64

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206bd

    goto :goto_19

    :cond_64
    const v0, 0x7f1206b9

    goto :goto_19

    :pswitch_68
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap0(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206b5

    goto :goto_19

    :cond_77
    const v0, 0x7f1206b8

    goto :goto_19

    :pswitch_7b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->confirmPin()Z

    move-result v2

    if-eqz v2, :cond_8f

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206c1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap12(Lcom/android/keyguard/KeyguardUCMPinView;)V

    goto :goto_19

    :cond_8f
    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206b7

    const v1, 0x7f1206bd

    goto :goto_19

    :cond_98
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_55

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_56
        :pswitch_68
        :pswitch_7b
    .end packed-switch
.end method
