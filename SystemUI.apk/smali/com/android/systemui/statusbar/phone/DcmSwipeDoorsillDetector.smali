.class public Lcom/android/systemui/statusbar/phone/DcmSwipeDoorsillDetector;
.super Lcom/android/systemui/swipe/SwipeDoorsillDetector;
.source "DcmSwipeDoorsillDetector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public initDimens()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setIntercept(Z)V
    .registers 2

    return-void
.end method
