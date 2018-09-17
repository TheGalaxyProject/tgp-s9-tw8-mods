.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;
.super Landroid/os/Handler;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->dismiss(Z)V

    goto :goto_5

    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
