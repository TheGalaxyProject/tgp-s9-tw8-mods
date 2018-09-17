.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceUnlockStateChanged(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .registers 4

    const-string/jumbo v0, "KeyguardUpdateMonitorCallback#onFingerprintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-get0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method
