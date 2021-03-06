.class public Landroid/support/v17/leanback/app/PlaybackOverlayFragment;
.super Landroid/support/v17/leanback/app/DetailsFragment;
.source "PlaybackOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$InputEventHandler;,
        Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static START_FADE_OUT:I

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mAnimationTranslateY:I

.field private mBackgroundType:I

.field mBgAlpha:I

.field private mBgDarkColor:I

.field private mBgFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mBgLightColor:I

.field private mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

.field private final mFadeListener:Landroid/animation/Animator$AnimatorListener;

.field mFadingEnabled:Z

.field mFadingStatus:I

.field final mFragmentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/app/PlaybackOverlayFragment;",
            ">;"
        }
    .end annotation
.end field

.field mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

.field private mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

.field private mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mMajorFadeTranslateY:I

.field private mMinorFadeTranslateY:I

.field private final mObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field private final mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private final mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field private mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mOtherRowsCenterToBottom:I

.field private mPaddingBottom:I

.field mResetControlsToPrimaryActionsPending:Z

.field private mRootView:Landroid/view/View;

.field private mShowTimeMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$FadeHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsFragment;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBackgroundType:I

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    iput v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    new-instance v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method private areControlsHidden()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v1, :cond_a

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .registers 8

    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private loadBgAnimator()V
    .registers 5

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$6;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private loadControlRowAnimator()V
    .registers 6

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    new-instance v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private loadDescriptionAnimator()V
    .registers 5

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_description_fade_in:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_description_fade_out:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private loadOtherRowAnimator()V
    .registers 6

    new-instance v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$9;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V

    new-instance v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$10;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;Landroid/support/v17/leanback/app/PlaybackOverlayFragment$AnimatorListener;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private updateBackground()V
    .registers 4

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_15

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgDarkColor:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_1c

    :goto_b
    :pswitch_b
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void

    :pswitch_16
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgLightColor:I

    goto :goto_b

    :pswitch_19
    const/4 v0, 0x0

    goto :goto_b

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_b
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method enableVerticalGridAnimations(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    :cond_d
    return-void
.end method

.method fade(Z)V
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_10

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-ne v2, v3, :cond_10

    :cond_f
    return-void

    :cond_10
    if-nez p1, :cond_16

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-eq v2, v4, :cond_f

    :cond_16
    if-eqz p1, :cond_1f

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    if-nez p1, :cond_25

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    if-eqz v2, :cond_1e

    :cond_25
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v2

    if-nez v2, :cond_7e

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMajorFadeTranslateY:I

    :goto_31
    iput v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAnimationTranslateY:I

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v2, :cond_96

    if-eqz p1, :cond_81

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_4d
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_c2

    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    :goto_55
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_c5

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v2, :cond_c5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v0, :cond_c5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAnimationTranslateY:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_7e
    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMinorFadeTranslateY:I

    goto :goto_31

    :cond_81
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4d

    :cond_96
    if-eqz p1, :cond_ad

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_4d

    :cond_ad
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mDescriptionFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_4d

    :cond_c2
    sget v2, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    goto :goto_55

    :cond_c5
    if-eqz p1, :cond_cb

    move v2, v3

    :goto_c8
    iput v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    return-void

    :cond_cb
    move v2, v4

    goto :goto_c8
.end method

.method getControlRowView()Landroid/view/View;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v3

    :cond_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v3

    :cond_14
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/DetailsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowsCenterToBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgDarkColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgLightColor:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mShowTimeMs:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMajorFadeTranslateY:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mMinorFadeTranslateY:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadBgAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadControlRowAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadOtherRowAnimator()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->loadDescriptionAnimator()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->updateBackground()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    :cond_c
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onDestroyView()V

    return-void
.end method

.method onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .registers 8

    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->areControlsHidden()Z

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    invoke-interface {v3, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;->handleInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    :cond_10
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_1a

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    :cond_1a
    sparse-switch v2, :sswitch_data_48

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    :cond_22
    :goto_22
    return v0

    :sswitch_23
    if-eqz v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    goto :goto_22

    :sswitch_2a
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v3, :cond_41

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_41

    const/4 v0, 0x1

    sget-object v3, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v4, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_22

    :cond_41
    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->tickle()V

    goto :goto_22

    nop

    :sswitch_data_48
    .sparse-switch
        0x4 -> :sswitch_2a
        0x13 -> :sswitch_23
        0x14 -> :sswitch_23
        0x15 -> :sswitch_23
        0x16 -> :sswitch_23
        0x17 -> :sswitch_23
        0x6f -> :sswitch_2a
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    :cond_9
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onResume()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->setBgAlpha(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    :cond_f
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    :cond_2a
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onStart()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    :cond_17
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    :cond_9
    invoke-super {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->onStop()V

    return-void
.end method

.method resetControlsToPrimaryActions(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_13
    if-nez p1, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mResetControlsToPrimaryActionsPending:Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mResetControlsToPrimaryActionsPending:Z

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    goto :goto_18
.end method

.method setBgAlpha(I)V
    .registers 3

    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_f
    return-void
.end method

.method public final setEventHandler(Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mInputEventHandler:Landroid/support/v17/leanback/app/PlaybackControlGlue$InputEventHandler;

    return-void
.end method

.method public setFadingEnabled(Z)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_25

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    if-nez v0, :cond_25

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->startFadeTimer()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_25
.end method

.method setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method startFadeTimer()V
    .registers 5

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v2, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public tickle()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->isResumed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    sget-object v0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->sHandler:Landroid/os/Handler;

    sget v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->START_FADE_OUT:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->startFadeTimer()V

    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->fade(Z)V

    goto :goto_1c
.end method

.method updateControlsBottomSpace(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_14

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :cond_14
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    if-nez v1, :cond_37

    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    if-le v0, v3, :cond_40

    :goto_33
    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showBottomSpace(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;Z)V

    :cond_36
    return-void

    :cond_37
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    goto :goto_25

    :cond_40
    move v3, v4

    goto :goto_33
.end method
