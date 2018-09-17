.class Lcom/android/keyguard/iris/KeyguardIrisView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onIrisError(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_39
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, -0x8

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, -0x9

    if-eq p1, v0, :cond_3a

    if-ltz p1, :cond_3f

    :cond_3a
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3f
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_15
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 5

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set0(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    if-eqz p1, :cond_3b

    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to VISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3a
    return-void

    :cond_3b
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to INVISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3a
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set1(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    :cond_39
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_17
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "Stop recognition by onStrongAuthStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_2a
    return-void
.end method
