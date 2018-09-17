.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/systemui/splugins/recents/views/PluginTaskViewHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
    }
.end annotation


# instance fields
.field private mActionButtonView:Landroid/widget/ImageView;

.field mAppIconView:Landroid/widget/ImageView;

.field mAppInfoView:Landroid/widget/ImageView;

.field mAppOverlayView:Landroid/widget/FrameLayout;

.field mAppTitleView:Landroid/widget/TextView;

.field private mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field private mContrastColorTint:Landroid/content/res/ColorStateList;

.field private mContrastDisableColorTint:Landroid/content/res/ColorStateList;

.field mCornerRadius:I

.field private mDarkColorTint:Landroid/content/res/ColorStateList;

.field private mDarkDisableColorTint:Landroid/content/res/ColorStateList;

.field mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultColorTint:Landroid/content/res/ColorStateList;

.field private mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

.field mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimLayerPaint:Landroid/graphics/Paint;

.field mDisabledTaskBarBackgroundColor:I

.field mDismissButton:Landroid/widget/ImageView;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandEnabled:Z

.field private mFocusTimerCountDown:Landroid/os/CountDownTimer;

.field mFocusTimerIndicator:Landroid/widget/ProgressBar;

.field private mHandler:Landroid/os/Handler;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field private mHeaderButtonSize:I

.field private mHeaderTextSize:I

.field mHighlightHeight:I

.field mIconView:Landroid/widget/ImageView;

.field private mIsExpanded:Z

.field private mIsLayoutRtl:Z

.field private mLightColorTint:Landroid/content/res/ColorStateList;

.field private mLightDisableColorTint:Landroid/content/res/ColorStateList;

.field mLightInfoIcon:Landroid/graphics/drawable/Drawable;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field mMoveTaskTargetStackId:I

.field private mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field private mRatioButtonIcon:Landroid/widget/ImageView;

.field private mRatioButtonProgress:Landroid/widget/ProgressBar;

.field private mRatioButtonView:Landroid/view/View;

.field private mSecondaryButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldDarkenBackgroundColor:Z

.field private mSnapViewButton:Landroid/widget/ImageView;

.field private mSplitTaskButton:Landroid/widget/ImageView;

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskBarViewDarkTextColor:I

.field mTaskBarViewLightTextColor:I

.field private mTaskLockButton:Landroid/widget/ImageView;

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;

.field private mTmpHSL:[F

.field private mTouchExplorationEnabled:Z

.field private mUseLightOnPrimaryColor:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskViewHeader;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskViewHeader;)[F
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/16 v2, 0xff

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06018d

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkColorTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06018c

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDisableColorTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060192

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightColorTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060191

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDisableColorTint:Landroid/content/res/ColorStateList;

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    :goto_88
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v1, :cond_117

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_9f
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    const v1, 0x7f060193

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    const v1, 0x7f06018e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    const v1, 0x7f080573

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080572

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f060190

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v1, :cond_12f

    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->DEFAULT_COLOR_PRIMARY:I

    :goto_e0
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v1

    if-nez v1, :cond_fe

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_134

    :cond_fe
    move v1, v3

    :goto_ff
    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_10d
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_88

    :cond_117
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_126

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_9f

    :cond_126
    const v1, 0x7f070553

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_9f

    :cond_12f
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_e0

    :cond_134
    move v1, v2

    goto :goto_ff
.end method

.method private hideAppOverlay(Z)V
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_e
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_82255()V
    .registers 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_82885()V
    .registers 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    return-void
.end method

.method private setNoUserInterationExtraState()V
    .registers 11

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_19

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v4, :cond_30

    :cond_19
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f

    :cond_2f
    return-void

    :cond_30
    const-class v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v4}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->isInSecondaryButtons(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_49
    :goto_49
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->isInSecondaryButtons(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    iget v4, v1, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    if-nez v4, :cond_b8

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    const v7, 0x7f0807a3

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_72
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->isInSecondaryButtons(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :goto_7f
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    iget-boolean v4, v1, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v4, :cond_cf

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    const/4 v0, 0x0

    :goto_99
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_d4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ge v0, v5, :cond_cd

    move v4, v5

    :goto_ac
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :cond_b2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_49

    :cond_b8
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    const v7, 0x7f0807a2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_72

    :cond_c1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_72

    :cond_c7
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_7f

    :cond_cd
    move v4, v6

    goto :goto_ac

    :cond_cf
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_d4
    return-void
.end method

.method private showAppOverlay()V
    .registers 13

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v8, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_73

    const v8, 0x7f0a004f

    invoke-static {p0, v8}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v9, 0x7f0a0049

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v9, 0x7f0a004a

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v9, 0x7f0a0051

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v8, v9, v11, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_73
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v8, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v8, :cond_94

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v8, :cond_110

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v8

    if-eqz v8, :cond_110

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_110

    const/4 v4, 0x1

    :cond_94
    :goto_94
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_112

    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    :goto_a5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-eqz v4, :cond_115

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    :goto_b9
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v9, v9, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v6, v7, v9, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v8, 0xfa

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void

    :cond_110
    const/4 v4, 0x0

    goto :goto_94

    :cond_112
    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto :goto_a5

    :cond_115
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_b9
.end method

.method private showToast(Landroid/view/View;Ljava/lang/String;)V
    .registers 9

    const/16 v5, 0x33

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v3}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_26

    aget v2, v0, v3

    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v5, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    :goto_22
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_26
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v5, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_22
.end method

.method private updateBackgroundColor(IF)V
    .registers 9

    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    aget v1, v1, v5

    sub-float v2, v4, p2

    const/high16 v3, -0x42800000    # -0.0625f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->invalidate()V

    :cond_3a
    return-void
.end method

.method private updateExtraButtonLayoutParams()V
    .registers 15

    const v11, 0x7f07054b

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v10

    if-eqz v10, :cond_9f

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_90

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v10, :cond_90

    const v10, 0x7f070343

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v10, 0x7f070344

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_2a
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2e
    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int/2addr v10, v1

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v11, :cond_3f

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3f

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    :cond_3f
    add-int v5, v10, v9

    move v8, v5

    const/4 v2, 0x0

    :goto_43
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_c7

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    const v11, 0x800015

    invoke-direct {v4, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int/2addr v5, v9

    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    if-eqz v9, :cond_c5

    const/4 v9, 0x1

    if-ne v2, v9, :cond_8d

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v13, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    move v8, v5

    :cond_8d
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_90
    const v10, 0x7f070340

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v10, 0x7f070341

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_2a

    :cond_9f
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_bd

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v10, :cond_bd

    const v10, 0x7f07054f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_b0
    const v10, 0x7f07054c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_2e

    :cond_bd
    const v10, 0x7f07054a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_b0

    :cond_c5
    move v8, v5

    goto :goto_8d

    :cond_c7
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const v11, 0x800013

    invoke-direct {v4, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    add-int v9, v3, v6

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsLayoutRtl:Z

    if-eqz v9, :cond_f4

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    :goto_eb
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->requestLayout()V

    return-void

    :cond_f4
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_eb
.end method

.method private updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 19

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const/4 v10, -0x1

    const/16 v11, 0x30

    invoke-direct {v7, v10, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v9

    if-eqz v9, :cond_12a

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v9, :cond_112

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v9, v9, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v9, :cond_112

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070343

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070344

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070342

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_52
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07033e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07033f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_68
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800013

    invoke-direct {v7, v6, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v7, v3, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const v11, 0x800013

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    add-int v9, v6, v3

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int v10, v9, v1

    if-eqz p3, :cond_18f

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    :goto_96
    add-int v8, v10, v9

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setMinimumHeight(I)V

    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsLayoutRtl:Z

    if-eqz v9, :cond_192

    move-object/from16 v9, p2

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    :goto_af
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_da

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    const v11, 0x800015

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_da
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    const v11, 0x800015

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_111

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v13, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_111
    return-void

    :cond_112
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070340

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070341

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_52

    :cond_12a
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v9, :cond_16d

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v9, v9, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v9, :cond_16d

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070550

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_160
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070548

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_68

    :cond_16d
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07054c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070549

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_160

    :cond_18f
    const/4 v9, 0x0

    goto/16 :goto_96

    :cond_192
    move-object/from16 v9, p2

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_af
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz p3, :cond_1f3

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    :goto_9
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v4, :cond_1f7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_18
    :goto_18
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v4, :cond_228

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_206

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useBlackOnPrimaryColor:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_206

    move v3, v2

    :goto_4b
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v4, :cond_21a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v4

    if-eqz v4, :cond_21a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    if-nez v4, :cond_67

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v4, :cond_20a

    :cond_67
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    :goto_75
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7a
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_238

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_84
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->dismissDescription:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_cd

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v4, :cond_cd

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_23c

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_b5
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_cd
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v4, :cond_f7

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_f7

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_240

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_df
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_f7
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_11c

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_244

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_105
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_248

    move v4, v5

    :goto_119
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_11c
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v4, :cond_139

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06018b

    invoke-virtual {v4, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_139
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v4

    if-eqz v4, :cond_169

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v4, :cond_156

    const v4, 0x7f0a01b9

    invoke-static {p0, v4}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    :cond_156
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v6, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget-boolean v7, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_169
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_176

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_176
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTouchExplorationEnabled:Z

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v4

    if-eqz v4, :cond_1e1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_1a3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v4, :cond_24b

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_1a0
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1a3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-eqz v4, :cond_1c2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v4, :cond_24f

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_1b4
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_1c2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1e1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v4, :cond_253

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_1d3
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_1e1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v4, :cond_1f2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_1f2
    return-void

    :cond_1f3
    iget v2, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    goto/16 :goto_9

    :cond_1f7
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v4

    if-eq v4, v2, :cond_18

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    goto/16 :goto_18

    :cond_206
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto/16 :goto_4b

    :cond_20a
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_75

    :cond_21a
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_75

    :cond_228
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v4, :cond_235

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    :goto_230
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7a

    :cond_235
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    goto :goto_230

    :cond_238
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_84

    :cond_23c
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_b5

    :cond_240
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_df

    :cond_244
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_105

    :cond_248
    move v4, v6

    goto/16 :goto_119

    :cond_24b
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_1a0

    :cond_24f
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_1b4

    :cond_253
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto/16 :goto_1d3
.end method

.method public buildSecondaryButtonsIfNeeded()V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_enabled"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    move v0, v1

    :cond_14
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    return-void
.end method

.method public buildSecondaryButtonsIfNeeded(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    return-void
.end method

.method public buildSecondaryButtonsIfNeeded(ZZ)V
    .registers 7

    const/4 v3, 0x0

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    if-eqz v1, :cond_5b

    iget-boolean v2, v1, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v2, :cond_5b

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->shouldSnapButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->shouldRatioButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    if-eqz p1, :cond_4f

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5b

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    :cond_5b
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    if-eqz p2, :cond_68

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateExtraButtonLayoutParams()V

    :cond_68
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInterationExtraState()V

    :cond_6b
    return-void
.end method

.method public cancelFocusTimerIndicator()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;I)V
    .registers 4

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    iput p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    return-void
.end method

.method public getDismissButton()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getHeaderButtonList(Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    if-nez p1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    :cond_19
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-eqz v1, :cond_31

    if-nez p1, :cond_2c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    :cond_2c
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-eqz v1, :cond_44

    if-nez p1, :cond_3f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_44

    :cond_3f
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5b

    if-nez p1, :cond_56

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5b

    :cond_56
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_76

    if-nez p1, :cond_71

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_76

    :cond_71
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_89

    if-nez p1, :cond_84

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_89

    :cond_84
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_9c

    if-nez p1, :cond_97

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9c

    :cond_97
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLockTaskButton()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method getSecondaryColor(IZ)I
    .registers 5

    if-eqz p2, :cond_b

    const/4 v0, -0x1

    :goto_3
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    :cond_b
    const/high16 v0, -0x1000000

    goto :goto_3
.end method

.method public getSplitTaskButton()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method isInSecondaryButtons(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_100712()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120955

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_101240()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_102863()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120934

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_86026(Landroid/animation/ObjectAnimator;Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x115

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskViewHeader_99418()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    if-eqz v2, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_40

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTouchExplorationEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_31

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_30

    :cond_40
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_5b

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "overview_task_dismissed_source"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_30

    :cond_5b
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_a0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v2, :cond_30

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc;-><init>()V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    :cond_a0
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v2, :cond_e3

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_e3

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v2, :cond_30

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V

    invoke-virtual {v10, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$1;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$1;-><init>()V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_30

    :cond_e3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_103

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_30

    :cond_103
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_117

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_30

    :cond_117
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_121

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    goto/16 :goto_30

    :cond_121
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_1e9

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_1e9

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_175

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v2, :cond_169

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    :goto_145
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/SyncTaskLockEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/SyncTaskLockEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_30

    :cond_169
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_145

    :cond_175
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f120962

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_30

    :cond_1e9
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-ne p1, v2, :cond_247

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const-string/jumbo v3, "progress"

    const/4 v4, 0x0

    const/16 v5, 0x64

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v2, 0x320

    invoke-virtual {v9, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    sget-object v2, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    new-instance v5, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;

    invoke-direct {v5, p0, v9, v0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4, v5}, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_247
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_267

    const-class v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v2}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_30

    :cond_267
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_30

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandEnabled:Z

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    if-eqz v2, :cond_27e

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startShrinkAnimation()V

    goto/16 :goto_30

    :cond_27e
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startExpandAnimation()V

    goto/16 :goto_30
.end method

.method public onConfigurationChanged()V
    .registers 12

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070551

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f070545

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v6

    if-eqz v6, :cond_7b

    const v6, 0x7f07033d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v6, 0x7f07033b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v6, 0x7f07033c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2e
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8c

    const/4 v4, 0x1

    :goto_3a
    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    if-ne v0, v6, :cond_42

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    if-eq v1, v6, :cond_8e

    :cond_42
    :goto_42
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    if-eq v6, v3, :cond_5c

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    :cond_5c
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsLayoutRtl:Z

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_7a

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v6, v7, v10, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_7a
    return-void

    :cond_7b
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    const v6, 0x7f070546

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v6, 0x7f070543

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2e

    :cond_8c
    const/4 v4, 0x0

    goto :goto_3a

    :cond_8e
    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    if-ne v6, v2, :cond_42

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderTextSize:I

    if-ne v6, v3, :cond_42

    iget-boolean v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsLayoutRtl:Z

    if-eq v6, v4, :cond_7a

    goto :goto_42
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    :goto_15
    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v2

    goto :goto_15
.end method

.method protected onFinishInflate()V
    .registers 9

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    const v3, 0x7f0a0212

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0a051a

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f0a0171

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    const v3, 0x7f0a0302

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    const v3, 0x7f0a04e2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v3, :cond_78

    const v3, 0x7f0a04cb

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    :cond_78
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v3

    if-eqz v3, :cond_105

    const v3, 0x7f0a01a6

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0a044e

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f12092a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const v6, 0x7f120935

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_c8

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_c8
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    const v4, 0x7f0a0452

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    const v4, 0x7f0a0450

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const v3, 0x7f0a03bb

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f120945

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_105
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_16

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v2, :cond_12

    return v3

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showAppOverlay()V

    return v4

    :cond_16
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1e

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    return v4

    :cond_1e
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3a

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120957

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e6

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showToast(Landroid/view/View;Ljava/lang/String;)V

    return v4

    :cond_3a
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120956

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_4c
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_88

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_88

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v2, :cond_7c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12095b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_70
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12095f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_7c
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120961

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_88
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-ne p1, v1, :cond_96

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f12092a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_96
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_a4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f12092d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_a4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_b3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120926

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    :cond_b3
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_c8

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120945

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    :cond_c8
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120955

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    :cond_db
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f120934

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    :cond_e6
    return v3
.end method

.method public onTaskDataLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .registers 16

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v10

    sub-int v3, p1, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_d2

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v6, v10, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    :goto_18
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_22

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_22
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v10, :cond_2d

    const/4 v6, 0x0

    :cond_2d
    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v10, :cond_85

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_85

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v10

    if-eqz v10, :cond_85

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v11, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v9, v10

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    if-eqz v6, :cond_d5

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_d5

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    :goto_64
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    add-int v10, v0, v1

    add-int/lit8 v10, v10, 0x0

    add-int/2addr v10, v9

    add-int/2addr v10, v8

    if-lt p1, v10, :cond_d7

    const/4 v7, 0x1

    :goto_70
    add-int v10, v0, v1

    add-int/lit8 v10, v10, 0x0

    add-int/2addr v10, v8

    if-lt p1, v10, :cond_d9

    const/4 v10, 0x1

    :goto_78
    and-int/2addr v5, v10

    add-int v10, v0, v1

    add-int/2addr v10, v8

    if-lt p1, v10, :cond_db

    const/4 v10, 0x1

    :goto_7f
    and-int/2addr v6, v10

    add-int v10, v0, v1

    if-lt p1, v10, :cond_dd

    const/4 v4, 0x1

    :cond_85
    :goto_85
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_df

    const/4 v10, 0x0

    :goto_8a
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e5

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-nez v4, :cond_e1

    const/4 v10, 0x0

    :goto_9d
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_b2

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_e3

    const/4 v10, 0x0

    :goto_a9
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_b2
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_c8

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v10, :cond_c8

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c8
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12, p1, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    return-void

    :cond_d2
    const/4 v6, 0x0

    goto/16 :goto_18

    :cond_d5
    const/4 v8, 0x0

    goto :goto_64

    :cond_d7
    const/4 v7, 0x0

    goto :goto_70

    :cond_d9
    const/4 v10, 0x0

    goto :goto_78

    :cond_db
    const/4 v10, 0x0

    goto :goto_7f

    :cond_dd
    const/4 v4, 0x0

    goto :goto_85

    :cond_df
    const/4 v10, 0x4

    goto :goto_8a

    :cond_e1
    const/4 v10, 0x4

    goto :goto_9d

    :cond_e3
    const/4 v10, 0x4

    goto :goto_a9

    :cond_e5
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_11b

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_147

    const/4 v10, 0x0

    :goto_ee
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14c

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v10, :cond_149

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    :goto_118
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_11b
    :goto_11b
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_16b

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v10, :cond_16b

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_169

    const/4 v10, 0x0

    :goto_12a
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_13d

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13d
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12, p1, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    return-void

    :cond_147
    const/4 v10, 0x4

    goto :goto_ee

    :cond_149
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    goto :goto_118

    :cond_14c
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v10, :cond_166

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_162
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_11b

    :cond_166
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto :goto_162

    :cond_169
    const/4 v10, 0x4

    goto :goto_12a

    :cond_16b
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_19d

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v10, :cond_19d

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-nez v4, :cond_199

    const/4 v10, 0x0

    :goto_17a
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_18f

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_19b

    const/4 v10, 0x0

    :goto_186
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_18f
    :goto_18f
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12, p1, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    return-void

    :cond_199
    const/4 v10, 0x4

    goto :goto_17a

    :cond_19b
    const/4 v10, 0x4

    goto :goto_186

    :cond_19d
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_1a9

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-nez v4, :cond_1b8

    const/4 v10, 0x0

    :goto_1a6
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a9
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_1ba

    const/4 v10, 0x0

    :goto_1ae
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_18f

    :cond_1b8
    const/4 v10, 0x4

    goto :goto_1a6

    :cond_1ba
    const/4 v10, 0x4

    goto :goto_1ae
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    return-void
.end method

.method resetNoUserInteractionState()V
    .registers 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_38
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_4b
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_79

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_5e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_67
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_70
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    :cond_79
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_81
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto :goto_35
.end method

.method setButtonVisible(Landroid/view/View;Z)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_16

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_15
.end method

.method public setDimAlpha(F)V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    return-void

    :cond_11
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2c

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_2c
    return-void
.end method

.method setNoUserInteractionLockState()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_6a
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    return-void

    :cond_6e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2b
.end method

.method public setNoUserInteractionState()V
    .registers 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_ec

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_ec

    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_d8

    move v1, v2

    :goto_23
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x800000

    and-int/2addr v1, v4

    const/high16 v4, 0x800000

    if-ne v1, v4, :cond_db

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_5b
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_11e

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    :goto_7c
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_95

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_111

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12095b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_92
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_95
    :goto_95
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_aa

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_149

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v1, :cond_149

    :cond_aa
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b8
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_143

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d7
    :goto_d7
    return-void

    :cond_d8
    move v1, v3

    goto/16 :goto_23

    :cond_db
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_5b

    :cond_ec
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_5b

    :cond_10b
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->lockDescription:Ljava/lang/String;

    goto/16 :goto_7c

    :cond_111
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12095f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_92

    :cond_11e
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    :goto_12a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120961

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    :cond_13f
    const-string/jumbo v1, ""

    goto :goto_12a

    :cond_143
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d7

    :cond_149
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_169

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_15f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15f
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_168

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_168
    return-void

    :cond_169
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1d0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1ca

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v1, :cond_1ca

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-ne v1, v2, :cond_1af

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v1, :cond_1ac

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    :goto_1a8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1ab
    :goto_1ab
    return-void

    :cond_1ac
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    goto :goto_1a8

    :cond_1af
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v1, :cond_1c7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_1c3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1ab

    :cond_1c7
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto :goto_1c3

    :cond_1ca
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_1ab

    :cond_1d0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1ab

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1ab
.end method

.method public setShouldDarkenBackgroundColor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    return-void
.end method

.method shouldRatioButtonVisible()Z
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mRatioButtonView:Landroid/view/View;

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v4, :cond_13

    :cond_12
    return v2

    :cond_13
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-eq v1, v3, :cond_12

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-eq v1, v3, :cond_12

    const-class v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v1}, Lcom/android/systemui/recents/misc/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getAndUpdateScreenRatioState()I

    move-result v1

    if-ne v1, v4, :cond_36

    return v2

    :cond_36
    return v3
.end method

.method shouldSnapButtonVisible()Z
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    return v5

    :cond_e
    const/4 v2, 0x1

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v5, :cond_4c

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_88

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    :goto_35
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSnapViewButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    :goto_3f
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int v6, v0, v1

    add-int/2addr v6, v4

    add-int/2addr v6, v3

    if-lt v5, v6, :cond_8c

    const/4 v2, 0x1

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_65

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_64

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_64

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-ne v5, v7, :cond_8e

    :cond_64
    :goto_64
    const/4 v2, 0x0

    :cond_65
    if-eqz v2, :cond_70

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_70

    const/4 v2, 0x0

    :cond_70
    if-eqz v2, :cond_87

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v5, :cond_87

    const/4 v2, 0x0

    :cond_87
    return v2

    :cond_88
    const/4 v4, 0x0

    goto :goto_35

    :cond_8a
    const/4 v3, 0x0

    goto :goto_3f

    :cond_8c
    const/4 v2, 0x0

    goto :goto_4c

    :cond_8e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-eq v5, v7, :cond_64

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v5, v8, :cond_65

    goto :goto_64
.end method

.method startExpandAnimation()V
    .registers 11

    const-wide/16 v8, 0xa7

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    :goto_25
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_65

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v3, v3, 0x53

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_65
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonSize:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startFocusTimerIndicator(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1e
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    int-to-long v2, p1

    const-wide/16 v4, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    return-void
.end method

.method startNoUserInteractionAnimation()V
    .registers 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0074

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_97

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_25

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_97

    :cond_25
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_8a

    move v1, v2

    :goto_2e
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x800000

    and-int/2addr v1, v4

    const/high16 v4, 0x800000

    if-ne v1, v4, :cond_8c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_58
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a6

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6c
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_75
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_89
    return-void

    :cond_8a
    move v1, v3

    goto :goto_2e

    :cond_8c
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_58

    :cond_97
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_a6
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b7
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c0
    return-void

    :cond_c1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskLockButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e2
    return-void

    :cond_e3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_11c

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-eqz v1, :cond_11c

    :cond_f1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-ne v1, v2, :cond_120

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v1, :cond_11d

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultDisableColorTint:Landroid/content/res/ColorStateList;

    :goto_119
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_11c
    :goto_11c
    return-void

    :cond_11d
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastDisableColorTint:Landroid/content/res/ColorStateList;

    goto :goto_119

    :cond_120
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mUseLightOnPrimaryColor:Z

    if-eqz v1, :cond_138

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDefaultColorTint:Landroid/content/res/ColorStateList;

    :goto_134
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_11c

    :cond_138
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContrastColorTint:Landroid/content/res/ColorStateList;

    goto :goto_134
.end method

.method startShrinkAnimation()V
    .registers 13

    const-wide/16 v10, 0xa7

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xa6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x1

    :goto_30
    if-ge v1, v2, :cond_6f

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    sub-int v4, v2, v1

    mul-int/lit8 v4, v4, 0x53

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_6b

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_58
    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    new-instance v4, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_6b
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_58

    :cond_6f
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsExpanded:Z

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRotation()F

    move-result v5

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method unbindFromTask(Z)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    :goto_a
    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_23
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSplitTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    :cond_34
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v3, :cond_3e

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_3e
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSecondaryButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_44

    :cond_54
    const/4 v0, 0x0

    goto :goto_a

    :cond_56
    return-void
.end method
