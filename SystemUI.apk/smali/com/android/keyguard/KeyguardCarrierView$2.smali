.class Lcom/android/keyguard/KeyguardCarrierView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->-set0(Lcom/android/keyguard/KeyguardCarrierView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->-wrap4(Lcom/android/keyguard/KeyguardCarrierView;I)V

    return-void
.end method
