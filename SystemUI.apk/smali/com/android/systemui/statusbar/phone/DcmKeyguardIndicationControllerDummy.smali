.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardIndicationControllerDummy;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "DcmKeyguardIndicationControllerDummy.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>()V

    const-string/jumbo v0, "DcmKeyguardIndicationControllerDummy"

    const-string/jumbo v1, "Make Dummy DcmKeyguardIndicationControllerDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public hideTransientIndication()V
    .registers 1

    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .registers 3

    return-void
.end method

.method public setRestingIndication(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 2

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    return-void
.end method

.method public showTransientIndication(I)V
    .registers 2

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
