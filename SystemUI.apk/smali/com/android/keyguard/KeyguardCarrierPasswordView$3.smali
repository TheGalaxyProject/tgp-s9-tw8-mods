.class Lcom/android/keyguard/KeyguardCarrierPasswordView$3;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get1(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get1(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
