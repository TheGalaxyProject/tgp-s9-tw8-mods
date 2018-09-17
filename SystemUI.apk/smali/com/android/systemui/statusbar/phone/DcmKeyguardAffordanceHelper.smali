.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardAffordanceHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "DcmKeyguardAffordanceHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    const-string/jumbo v0, "DcmKeyguardAffordanceHelper"

    const-string/jumbo v1, "Make Dummy DcmKeyguardAffordanceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .registers 1

    return-void
.end method

.method public cancelDAAffordance()V
    .registers 1

    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipingInProgress()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onRtlPropertiesChanged()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public removePreviews()V
    .registers 1

    return-void
.end method

.method public reset(Z)V
    .registers 2

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .registers 3

    return-void
.end method

.method public updatePreviews()V
    .registers 1

    return-void
.end method
