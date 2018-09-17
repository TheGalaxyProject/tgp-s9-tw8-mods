.class public Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field private mAtmRemain:I

.field private mErrorState:I

.field mInputPin:Ljava/lang/String;

.field mInputPuk:Ljava/lang/String;

.field private mState:I

.field final synthetic this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttemptsRemaining()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return v0
.end method

.method public getErrorState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return v0
.end method

.method public getState()I
    .registers 4

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return v0
.end method

.method public next(Ljava/lang/String;)V
    .registers 12

    const v9, 0x10002

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "next mCurState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v3, 0x0

    const/16 v2, 0x63

    packed-switch v1, :pswitch_data_70

    :goto_2f
    :pswitch_2f
    new-instance v0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v5, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get1(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :pswitch_40
    const/4 v2, 0x0

    new-array v3, v8, [Ljava/lang/String;

    aput-object p1, v3, v7

    goto :goto_2f

    :pswitch_46
    iput-object p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    iput v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_2f

    :pswitch_4b
    iput-object p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    const v4, 0x10003

    iput v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_2f

    :pswitch_53
    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    const/4 v2, 0x2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    aput-object v4, v3, v8

    goto :goto_2f

    :cond_68
    iput v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    const v4, 0x10006

    iput v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_2f

    :pswitch_data_70
    .packed-switch 0x10000
        :pswitch_40
        :pswitch_46
        :pswitch_4b
        :pswitch_53
        :pswitch_2f
    .end packed-switch
.end method

.method public setAttemptsRemaining(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return-void
.end method

.method public setErrorState(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return-void
.end method

.method public setState(I)V
    .registers 5

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return-void
.end method

.method public setState(II)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iput p2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    packed-switch p1, :pswitch_data_5a

    const v0, 0x10005

    iput v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    :goto_4d
    return-void

    :pswitch_4e
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_4d

    :pswitch_53
    const v0, 0x10001

    iput v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_4d

    nop

    :pswitch_data_5a
    .packed-switch 0x83
        :pswitch_4e
        :pswitch_4e
        :pswitch_53
    .end packed-switch
.end method
