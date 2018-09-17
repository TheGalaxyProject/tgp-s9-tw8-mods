.class Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
.source "IrisAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 11

    const/16 v7, 0xf

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    if-eq p1, v5, :cond_34

    if-ne p1, v4, :cond_46

    :cond_34
    :goto_34
    if-ne p1, v5, :cond_54

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    :goto_3b
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->-wrap0(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    :cond_45
    return-void

    :cond_46
    if-eq p1, v6, :cond_34

    const/4 v0, 0x6

    if-eq p1, v0, :cond_34

    if-eqz p1, :cond_34

    const/16 v0, 0xd

    if-eq p1, v0, :cond_34

    if-ne p1, v7, :cond_45

    goto :goto_34

    :cond_54
    if-ne p1, v6, :cond_5c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_3b

    :cond_5c
    if-ne p1, v4, :cond_64

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x7

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_3b

    :cond_64
    if-nez p1, :cond_6d

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/16 v1, 0x8

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_3b

    :cond_6d
    if-ne p1, v7, :cond_76

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/16 v1, 0xa

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_3b

    :cond_76
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iput v3, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f121c82

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3b
.end method

.method public onAuthenticationFailed()V
    .registers 3

    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->reportFailedBiometricsAttempts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 6

    const-string/jumbo v0, "IrisAuthenticateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthenticationCallback - onAuthenticationHelp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V
    .registers 4

    const-string/jumbo v0, "IrisAuthenticateDialog"

    const-string/jumbo v1, "mAuthenticationCallback - onAuthenticationSucceeded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->resetFailedBiometricsBackupAttempts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    return-void
.end method

.method public onIRImage([BII)V
    .registers 4

    return-void
.end method
