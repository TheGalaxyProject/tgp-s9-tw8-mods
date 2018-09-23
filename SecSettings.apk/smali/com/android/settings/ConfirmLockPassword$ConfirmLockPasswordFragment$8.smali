.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .registers 8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_32

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap0(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_32

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "type"

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get7(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v2

    :goto_25
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$pin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_32
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get4(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;->val$localEffectiveUserId:I

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    :cond_4e
    const/4 v1, 0x3

    goto :goto_25
.end method
