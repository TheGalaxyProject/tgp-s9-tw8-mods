.class Lcom/android/keyguard/KeyguardCarrierPasswordView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-wrap0(Lcom/android/keyguard/KeyguardCarrierPasswordView;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get4(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-set1(Lcom/android/keyguard/KeyguardCarrierPasswordView;I)I

    return-void
.end method

.method public onTick(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get4(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f12049e

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    return-void
.end method
