.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractionStateHandler"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private mMovingEnabledByMultiPan:Z

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private final mScalingThreshold:F

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105004e

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mMovingEnabledByMultiPan:Z

    return-void
.end method

.method private clearMultiFingerPanning()V
    .registers 4

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_18
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mMovingEnabledByMultiPan:Z

    return-void
.end method

.method private handleMultiFingerPanning(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaling:Z

    if-eqz v0, :cond_18

    :cond_d
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMultiFingerPanning ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    :cond_1f
    :goto_1f
    :pswitch_1f
    return-void

    :pswitch_20
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mMovingEnabledByMultiPan:Z

    goto :goto_1f

    :pswitch_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mMovingEnabledByMultiPan:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap2(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V

    goto :goto_1f

    :pswitch_64
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->clearMultiFingerPanning()V

    goto :goto_1f

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_20
        :pswitch_64
        :pswitch_54
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaling:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->clearMultiFingerPanning()V

    return-void
.end method

.method public isMovingByMultiPanning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mMovingEnabledByMultiPan:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->handleMultiFingerPanning(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get2(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get5(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v0

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    goto :goto_2f
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 11

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaling:Z

    if-nez v4, :cond_2b

    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_16

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    :cond_14
    const/4 v4, 0x0

    return v4

    :cond_16
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mInitialScaleFactor:F

    sub-float v0, v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScalingThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    iput-boolean v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->mScaling:Z

    return v8

    :cond_2b
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    mul-float v3, v1, v4

    const/high16 v4, 0x41000000    # 8.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5b

    cmpl-float v4, v3, v1

    if-lez v4, :cond_5b

    const/high16 v2, 0x41000000    # 8.0f

    :goto_47
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get1(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_value"

    sub-float v6, v2, v6

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return v8

    :cond_5b
    cmpg-float v4, v3, v6

    if-gez v4, :cond_66

    cmpg-float v4, v3, v1

    if-gez v4, :cond_66

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_47

    :cond_66
    move v2, v3

    goto :goto_47
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get2(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifiedContentInteractionStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get2(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    return v2

    :cond_b
    return v2
.end method
