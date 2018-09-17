.class Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .registers 4

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_11
.end method

.method public onDexModeChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_36
    const-string/jumbo v0, ""

    :cond_39
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120534

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .registers 7

    const/16 v1, 0x2715

    if-eq p1, v1, :cond_8

    const/16 v1, 0x2713

    if-ne p1, v1, :cond_1f

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_44
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_20
.end method

.method public onFailedUnlockAttemptChanged()V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string/jumbo v1, "KeyguardBiometricIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_33

    const/16 v1, 0x9

    if-le v0, v1, :cond_4e

    :cond_33
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_4e
    return-void
.end method

.method public onIBAuthFailed()V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120507

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_36
    const-string/jumbo v0, ""

    :cond_39
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120534

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .registers 7

    const/4 v1, 0x7

    if-eq p1, v1, :cond_7

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1e

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120507

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_47
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .registers 5

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onIBRunningStateChanged(Z)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_25
.end method

.method public onIrisAuthFailed()V
    .registers 5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_36
    const-string/jumbo v0, ""

    :cond_39
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120534

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .registers 7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_8

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1f

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    const/16 v1, 0xe

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120541

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5c
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_20
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eq v0, p1, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iput-boolean p1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    :cond_a
    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateVisualCueIcon()V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string/jumbo v0, "KeyguardBiometricIconView"

    const-string/jumbo v1, "updateAllBiometricsListeningState() by onStrongAuthStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->-get0(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_2b
    return-void
.end method

.method public onSystemDialogsShowing()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_f
    return-void
.end method
