.class Lcom/android/keyguard/KeyguardUpdateMonitor$15;
.super Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, " ,onAuthenticationAcquired() IB is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, "onAuthenticationError() IB is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1f

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, "skip ERROR_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    const-string/jumbo v0, "Keyguard_IB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_5a

    const-string/jumbo p2, ""

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120496

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, " ,onAuthenticationFailed() IB is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, "onAuthenticationFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, " ,onAuthenticationHelp() IB is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v0, "Keyguard_IB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIBAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, " ,onAuthenticationSucceeded() IB is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string/jumbo v0, "Keyguard_IB"

    const-string/jumbo v1, "onAuthenticationSucceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap27(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method
