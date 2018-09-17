.class Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricDexButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .registers 4

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    goto :goto_11
.end method

.method public onDexModeChanged(Z)V
    .registers 5

    const-string/jumbo v0, "KeyguardBiometricDexButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDexModeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1204b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1204d0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_e
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_25
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120504

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120508

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_e
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .registers 6

    const/16 v2, -0x9

    if-ne p1, v2, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-wrap0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    if-eq p1, v2, :cond_3b

    if-ltz p1, :cond_40

    :cond_3b
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_40
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f12052c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get2(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120542

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_e
.end method

.method public onPhoneStateChanged(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get1(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1a

    packed-switch p1, :pswitch_data_4e

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_45
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    goto :goto_1a

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 6

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public onStartedWakingUp(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->-get3(Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->updateButtonVisibility()V

    :cond_11
    return-void
.end method

.method public onSystemDialogsShowing()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricDexButtonView;->setVisibility(I)V

    :cond_f
    return-void
.end method
