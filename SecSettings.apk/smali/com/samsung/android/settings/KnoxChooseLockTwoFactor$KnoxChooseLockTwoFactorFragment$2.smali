.class Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;
.super Ljava/lang/Object;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "KnoxChooseLockTwoFactor"

    const-string/jumbo v1, "onClick : Later button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_53

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setPwdChangeRequested(Landroid/content/Context;II)V

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get1()I

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get1()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_59

    :cond_44
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-wrap1(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get0(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->finish()V

    return-void

    :cond_59
    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get1()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;->this$1:Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-wrap2(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    goto :goto_49
.end method
