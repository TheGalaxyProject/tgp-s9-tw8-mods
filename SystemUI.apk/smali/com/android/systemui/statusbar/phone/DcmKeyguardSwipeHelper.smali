.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;
.super Lcom/android/systemui/swipe/SwipeAnimator;
.source "DcmKeyguardSwipeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;-><init>()V

    const-string/jumbo v0, "DcmKeyguardSwipeHelper"

    const-string/jumbo v1, "Make Dummy DcmKeyguardSwipeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initDimens()V
    .registers 1

    return-void
.end method

.method public isViRunning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;->mIntercepting:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onUnlockExecuted()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setIntercept(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;->mIntercepting:Z

    return-void
.end method

.method public startDexBounceAnimation(Z)V
    .registers 2

    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .registers 1

    return-void
.end method

.method public startPreviewFocusAnim(Z)V
    .registers 2

    return-void
.end method
