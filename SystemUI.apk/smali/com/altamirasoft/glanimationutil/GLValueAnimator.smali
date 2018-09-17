.class public Lcom/altamirasoft/glanimationutil/GLValueAnimator;
.super Ljava/lang/Object;
.source "GLValueAnimator.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;,
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field currentValue:F

.field duration:J

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field isCanceled:Z

.field isFinished:Z

.field isStarted:Z

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field startDelay:J

.field toValue:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isCanceled:Z

    return-void
.end method

.method private interpolator(FFFF)F
    .registers 9

    div-float v0, p4, p3

    cmpg-float v2, p3, p4

    if-gtz v2, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_8
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_19

    sub-float v2, p2, p1

    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v1, p1, v2

    :goto_18
    return v1

    :cond_19
    sub-float v2, p2, p1

    mul-float/2addr v2, v0

    add-float v1, p1, v2

    goto :goto_18
.end method


# virtual methods
.method public doFrame()V
    .registers 11

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    if-nez v6, :cond_3c

    iget-boolean v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    if-eqz v6, :cond_3d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mStartTime:J

    sub-long v2, v6, v8

    iget-wide v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->startDelay:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_18

    const/4 v5, 0x1

    :cond_18
    if-nez v5, :cond_3b

    const/4 v1, 0x0

    iget-wide v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->startDelay:J

    sub-long/2addr v2, v6

    iget v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->fromValue:F

    iget v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    iget-wide v8, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->duration:J

    long-to-float v7, v8

    long-to-float v8, v2

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator(FFFF)F

    move-result v5

    iput v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    iget v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    iget v6, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_35

    const/4 v1, 0x1

    :cond_35
    iget-object v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v5, :cond_3e

    :cond_39
    if-nez v1, :cond_55

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    return-void

    :cond_3d
    return-void

    :cond_3e
    iget-object v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v4, :cond_39

    iget-object v5, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;

    invoke-interface {v5, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_55
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    goto :goto_3b
.end method

.method public end()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;->onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
