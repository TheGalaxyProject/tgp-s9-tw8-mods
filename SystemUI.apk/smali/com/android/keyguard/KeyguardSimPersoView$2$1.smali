.class Lcom/android/keyguard/KeyguardSimPersoView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPersoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPersoView$2;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

.field final synthetic val$verifySucceed:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView$2;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->val$verifySucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    const v4, 0x7f1205e7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->-get1(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->-get1(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->val$verifySucceed:Z

    if-eqz v0, :cond_d6

    const-string/jumbo v0, "KeyguardSimPersoView"

    const-string/jumbo v1, "verifyPasswordAndUnlock onSimCheckResponse verifySucceed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KTT_USIM_TEXT:Z

    if-eqz v0, :cond_36

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPersoView;->-set1(I)I

    :cond_36
    const-string/jumbo v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string/jumbo v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6c

    const-string/jumbo v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b5

    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPersoView;->-get2(Lcom/android/keyguard/KeyguardSimPersoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_90
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_9d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPersoView;->-set2(Lcom/android/keyguard/KeyguardSimPersoView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-static {v0, v5}, Lcom/android/keyguard/KeyguardSimPersoView;->-set0(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    return-void

    :cond_b5
    const-string/jumbo v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string/jumbo v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_6c

    :cond_d6
    const-string/jumbo v0, "KeyguardSimPersoView"

    const-string/jumbo v1, "verifyPasswordAndUnlock onSimCheckResponse verifyfail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KTT_USIM_TEXT:Z

    if-eqz v0, :cond_ec

    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoView;->-get0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoView;->-set1(I)I

    :cond_ec
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SKT_USIM_TEXT:Z

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_9d

    :cond_106
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoView;->-get0()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_124

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    :cond_124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPersoView$2;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPersoView$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d
.end method
