.class public Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private checkPasswordResult:Z

.field private csNameUri:Ljava/lang/String;

.field private opCode:I

.field final synthetic this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPasswordResult:Z

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UCMAsyncTask csNameUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " opCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iput p3, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    iput-object p2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    return-void
.end method

.method private checkPassword()V
    .registers 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "ConfirmUCMLockPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkPassword : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, v2, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v2

    const v3, 0x10004

    if-ne v2, v3, :cond_5a

    iget-object v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :try_start_3c
    iget-object v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get6(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPasswordResult:Z
    :try_end_5a
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_3c .. :try_end_5a} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v1

    const-string/jumbo v2, "ConfirmUCMLockPassword"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    iput-boolean v5, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPasswordResult:Z

    goto :goto_5a

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->printStackTrace()V

    iput-boolean v5, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPasswordResult:Z

    goto :goto_5a
.end method

.method private getUCMStatus()Ljava/lang/Integer;
    .registers 7

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    const-string/jumbo v5, "getUCMStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v3, v2, v4

    const/4 v4, 0x1

    aget v1, v2, v4

    const/4 v4, 0x2

    aget v0, v2, v4

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x3

    aget v5, v2, v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set3(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x4

    aget v5, v2, v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x5

    aget v5, v2, v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set5(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x6

    aget v5, v2, v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v4, v3, v1}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(II)V

    const/16 v4, 0x83

    if-eq v3, v4, :cond_58

    const/16 v4, 0x84

    if-eq v3, v4, :cond_58

    const/16 v4, 0x85

    if-eq v3, v4, :cond_58

    iget-object v4, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    :cond_58
    const/4 v4, 0x0

    return-object v4
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->isDeviceEncryptionEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    const-string/jumbo v5, "Could not find the storage manager to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    :try_start_1e
    invoke-interface {v3, p1, p2}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v4

    if-eqz v4, :cond_42

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeEncryptionPassword : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    const-string/jumbo v5, "Error changing encryption password"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v4, "ConfirmUCMLockPassword"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private updateUI()V
    .registers 16

    const v11, 0x10001

    const/4 v14, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v9

    if-eqz v9, :cond_15

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "updateUI"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v9

    const v10, 0x10004

    if-ne v9, v10, :cond_17c

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v9

    if-eqz v9, :cond_31

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "StateMachine.DONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v9

    if-eqz v9, :cond_48

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "ConfirmUCMLockPassword from settings"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-boolean v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPasswordResult:Z

    if-eqz v9, :cond_7c

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "type"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "password"

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v14, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    :goto_7b
    return-void

    :cond_7c
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const v11, 0x7f1216f8

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap5(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    goto :goto_7b

    :cond_9b
    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v9

    if-eqz v9, :cond_aa

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "ConfirmUCMLockPassword from outside"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get0(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get6(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get1()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/settings/UCMHelpUtils;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/android/settings/UCMHelpUtils;->saveUCMPasswordAndSetConfigurationInfo(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get8(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_172

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get8(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_172

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mStorageType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get8(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get8(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "storageTypeIndex : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "EFSProperties.STORAGE_TYPE_ETC : 9"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "ro.boot.ucs_mode"

    const-string/jumbo v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "2"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_152

    const/16 v9, 0x9

    if-ne v7, v9, :cond_152

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v9

    if-eqz v9, :cond_14d

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "call updateEncryptionPassword"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_14f
    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_166

    :cond_152
    :goto_152
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/app/Activity;->setResult(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7b

    :catch_166
    move-exception v2

    const-string/jumbo v9, "ConfirmUCMLockPassword"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    :cond_172
    const-string/jumbo v9, "ConfirmUCMLockPassword"

    const-string/jumbo v10, "storage type is not proper"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    :cond_17c
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v3

    sparse-switch v3, :sswitch_data_334

    const-string/jumbo v0, ""

    :try_start_18a
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap1(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v9

    if-eqz v9, :cond_1a2

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap1(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get1(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1a2
    if-nez v0, :cond_1ae

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/samsung/android/settings/UCMHelpUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1ad} :catch_326

    move-result-object v0

    :cond_1ae
    :goto_1ae
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1b7
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap5(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    return-void

    :sswitch_1c4
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f121c6e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1b7

    :sswitch_1d1
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v9

    if-ne v9, v11, :cond_219

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const v11, 0x7f121c68

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, v11, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9, v13}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap6(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V

    goto :goto_1b7

    :cond_219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const v11, 0x7f1206c3

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, v11, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b7

    :sswitch_253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const v11, 0x7f121c6a

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, v11, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9, v13}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap6(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V

    goto/16 :goto_1b7

    :sswitch_292
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v9

    const/high16 v10, 0x10000

    if-ne v9, v10, :cond_2dc

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, v11, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2d1
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b7

    :cond_2dc
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v9, v9, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v9

    if-ne v9, v11, :cond_319

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v11, v11, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap4(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d1

    :cond_319
    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v10, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap2(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d1

    :catch_326
    move-exception v2

    iget-object v9, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v9}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/samsung/android/settings/UCMHelpUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1ae

    nop

    :sswitch_data_334
    .sparse-switch
        0x0 -> :sswitch_292
        0x20 -> :sswitch_1d1
        0x21 -> :sswitch_253
        0x10006 -> :sswitch_1c4
    .end sparse-switch
.end method

.method private verifyPin(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "ConfirmUCMLockPassword"

    const-string/jumbo v2, "verifyPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setAttemptsRemaining(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    aget v1, v0, v3

    const/16 v2, 0x83

    if-ne v1, v2, :cond_49

    const-string/jumbo v1, "ConfirmUCMLockPassword"

    const-string/jumbo v2, "verifyPin : STATE_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v2, 0x10004

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    :cond_49
    aget v1, v0, v3

    const/16 v2, 0x85

    if-ne v1, v2, :cond_62

    const-string/jumbo v1, "ConfirmUCMLockPassword"

    const-string/jumbo v2, "verifyPin : STATE_BLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v2, 0x10001

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    :cond_62
    aget v1, v0, v3

    const/16 v2, 0x84

    if-ne v1, v2, :cond_71

    const-string/jumbo v1, "ConfirmUCMLockPassword"

    const-string/jumbo v2, "verifyPin : STATE_LOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    const/4 v1, 0x0

    return-object v1
.end method

.method private verifyPuk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "ConfirmUCMLockPassword"

    const-string/jumbo v2, "verifyPuk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setAttemptsRemaining(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    aget v1, v0, v3

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v2, 0x10004

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    :goto_3f
    const/4 v1, 0x0

    return-object v1

    :cond_41
    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v2, 0x10001

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    goto :goto_3f
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    return-object v4

    :cond_11
    iget v3, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    packed-switch v3, :pswitch_data_40

    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPassword()V

    return-object v2

    :pswitch_1a
    if-eqz p1, :cond_16

    aget-object v3, p1, v5

    if-eqz v3, :cond_16

    aget-object v0, p1, v5

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->verifyPin(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    :pswitch_27
    if-eqz p1, :cond_16

    aget-object v3, p1, v5

    if-eqz v3, :cond_16

    aget-object v3, p1, v6

    if-eqz v3, :cond_16

    aget-object v1, p1, v5

    aget-object v0, p1, v6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    :pswitch_3a
    invoke-direct {p0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->getUCMStatus()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceEncryptionEnabled()Z
    .registers 6

    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "unsupported"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "encrypted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/ConfirmUCMLockPassword;->-get0()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "ConfirmUCMLockPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encrypted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->updateUI()V

    iget v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/16 v2, 0x63

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap9(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    iget v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$1:Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap8(Lcom/samsung/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    :cond_b
    return-void
.end method
