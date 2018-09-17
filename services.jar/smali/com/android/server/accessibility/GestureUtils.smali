.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D
    .registers 7

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 10

    const/4 v4, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    invoke-static {p0, p1, p4}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v0

    int-to-double v2, p3

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_12

    return v4

    :cond_12
    const/4 v2, 0x1

    return v2
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .registers 25

    sub-float v1, p4, p0

    sub-float v2, p5, p1

    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_10

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-nez v11, :cond_10

    const/4 v11, 0x1

    return v11

    :cond_10
    float-to-double v12, v1

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v3, v12

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_35

    div-float v4, v1, v3

    :goto_1e
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_37

    div-float v5, v2, v3

    :goto_25
    sub-float v6, p6, p2

    sub-float v7, p7, p3

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_39

    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-nez v11, :cond_39

    const/4 v11, 0x1

    return v11

    :cond_35
    move v4, v1

    goto :goto_1e

    :cond_37
    move v5, v2

    goto :goto_25

    :cond_39
    float-to-double v12, v6

    float-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v8, v12

    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_5a

    div-float v9, v6, v8

    :goto_47
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_5c

    div-float v10, v7, v8

    :goto_4e
    mul-float v11, v4, v9

    mul-float v12, v5, v10

    add-float v0, v11, v12

    cmpg-float v11, v0, p8

    if-gez v11, :cond_5e

    const/4 v11, 0x0

    return v11

    :cond_5a
    move v9, v6

    goto :goto_47

    :cond_5c
    move v10, v7

    goto :goto_4e

    :cond_5e
    const/4 v11, 0x1

    return v11
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v2

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v1, v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method
