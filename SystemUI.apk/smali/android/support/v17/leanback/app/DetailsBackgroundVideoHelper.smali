.class final Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;,
        Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;
    }
.end annotation


# instance fields
.field private mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableVisible:Z

.field mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

.field private mCurrentState:I

.field private final mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

.field private mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

.field private mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    return-void
.end method

.method private applyState()V
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    packed-switch v0, :pswitch_data_38

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V

    goto :goto_6

    :cond_17
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->addPlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    goto :goto_6

    :cond_1f
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(Z)V

    goto :goto_6

    :pswitch_23
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->pause()V

    goto :goto_6

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_7
        :pswitch_23
    .end packed-switch
.end method

.method private internalStartPlayback()V
    .registers 5

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateState(I)V
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->applyState()V

    return-void
.end method


# virtual methods
.method crossFadeBackgroundToVideo(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    return-void
.end method

.method crossFadeBackgroundToVideo(ZZ)V
    .registers 10

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v6, 0x0

    xor-int/lit8 v1, p1, 0x1

    iget-boolean v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    if-ne v5, v1, :cond_26

    if-eqz p2, :cond_25

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_17

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v6, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    :cond_17
    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_25

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_23

    :goto_1f
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_23
    move v3, v4

    goto :goto_1f

    :cond_25
    return-void

    :cond_26
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_33

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v6, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    :cond_33
    if-eqz p1, :cond_3f

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_37
    if-eqz p1, :cond_41

    const/4 v0, 0x0

    :goto_3a
    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_44

    return-void

    :cond_3f
    const/4 v2, 0x0

    goto :goto_37

    :cond_41
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3a

    :cond_44
    if-eqz p2, :cond_50

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4e

    :goto_4a
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_4e
    move v3, v4

    goto :goto_4a

    :cond_50
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v3

    const/4 v3, 0x1

    aput v0, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method isVideoVisible()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method stopParallax()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->removeEffect(Landroid/support/v17/leanback/widget/ParallaxEffect;)V

    return-void
.end method
